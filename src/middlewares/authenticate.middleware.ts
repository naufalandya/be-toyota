import type { Request, Response, NextFunction } from "express"
import jwt from 'jsonwebtoken';
import { ErrorWithStatusCode } from "../class/error";
import prisma from "../libs/prisma.lib";
import { Prisma } from "@prisma/client";
import { createClient } from 'redis';


const redisClient = createClient({
    url: `redis://redis:6379` // Assuming your Redis service is named `redis` in Docker Compose
  });
  
  redisClient.on('error', (err) => console.error('Redis Client Error:', err));
  
(async () => {
    await redisClient.connect();
    console.log('Connected to Redis');
})();

export interface UserRequest extends Request {
    user?: {
      token: string;
      id: string;
      role: string;
      project_assigned_id : string;
    };
  }
  
export const authenticateToken = async(req : Request, res : Response, next : NextFunction) => {
    try {
        const { authorization } = req.headers

        if(!authorization || !authorization.split(' ')[1]) {
            return next(new ErrorWithStatusCode("no token provided", 403)); 
        }

        let token = authorization.split(' ')[1]

        jwt.verify(token, process.env.SECRET_KEY as string, (err: jwt.VerifyErrors | null, decoded : string | jwt.JwtPayload | undefined) => {
            if (err) {
                console.log(err)
                return next(new ErrorWithStatusCode("failed to authenticate token", 401));
            }

            (req as UserRequest).user = decoded as UserRequest['user'];
            next();
        });


    } catch (err) {
        next(err)
    }
}



export const authorizeFeature = (requiredFeature : string, requiredAction : string) => {
    return async (req : Request, res : Response, next : NextFunction) => {
      try {
        const userId = Number((req as UserRequest)?.user?.id); 
        const { projectId } = req.params; 
  
        const permission = await prisma.project_permissions.findFirst({
          where: {
            user_id: userId,
            project_id: parseInt(projectId),
            feature: { name: requiredFeature }, 
            action: requiredAction as Prisma.EnumACTIONFilter<"project_permissions">,
          },
        });
  
        if (!permission) {
            return next(new ErrorWithStatusCode("Forbidden: Access denied", 403));
        }
  
      } catch (error) {
    
        res.status(500).json({ message: "Internal server error" });
      }
    };
  };

  export const authorizeFeatureWithCache = (requiredFeature: string, requiredAction: string) => {
    return async (req: Request, res: Response, next: NextFunction) => {
      try {
        const userId = Number((req as UserRequest)?.user?.id);
        const projectId = Number((req as UserRequest)?.user?.project_assigned_id);

        (req as any).userId = userId;
        (req as any).projectId = projectId;
  
        const cacheKey = `permission:${userId}:${projectId}:${requiredFeature}:${requiredAction}`;
  
        console.log(cacheKey)
        const cachedPermission = await redisClient.get(cacheKey);
  
        if (cachedPermission === 'allowed') {
          return next();
        }
  
        const permission = await prisma.project_permissions.findFirst({
          where: {
            user_id: userId,
            project_id: projectId,
            feature: { name: requiredFeature },
            action: requiredAction as Prisma.EnumACTIONFilter<"project_permissions">,
          },
        });
  
        if (!permission) {
          await redisClient.setEx(cacheKey, 300, 'denied');
          return next(new ErrorWithStatusCode('Forbidden: Access denied', 403));
        }
  
        await redisClient.setEx(cacheKey, 3600, 'allowed');
  
        return next();
      } catch (error) {
        console.error('Authorization Error:', error);
        res.status(500).json({ message: 'Internal server error' });
      }
    };
  };