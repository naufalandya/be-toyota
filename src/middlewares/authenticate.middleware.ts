import type { Request, Response, NextFunction } from "express"
import jwt from 'jsonwebtoken';
import { ErrorWithStatusCode } from "../class/error";

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


export const checkAdminRole = async (req: Request, res: Response, next: NextFunction) => {
    try {
      const user = (req as any).user; 
  
      if (!user || !user.role) {
        res.status(403).json({
          success: false,
          message: "Akses ditolak: tidak ada peran yang ditemukan.",
        });
        return 
      }
  
      if (user.role !== "admin") {
         res.status(403).json({
          success: false,
          message: "Akses ditolak: hanya admin yang diperbolehkan.",
        });
        return
      }
  
      next();
    } catch (err) {
      next(err);
    }
  };



  export const checkAdminRoleAccess = async (req: Request, res: Response, next: NextFunction) => {
    try {
      const user = (req as any).user; 
  
      if (!user || !user.role) {
        res.status(403).json({
          success: false,
          message: "Akses ditolak: tidak ada peran yang ditemukan.",
        });
        return 
      }
  
      if (user.role !== "admin") {
         res.status(403).json({
          success: false,
          message: "Akses ditolak: hanya admin yang diperbolehkan.",
        });
        return
      }
  
      res.status(200).json({
        success: true,
        message: "Akses accepted",
      });
      return
    
    } catch (err) {
      next(err);
    }
  };

  export const checkAdminUserAccess = async (req: Request, res: Response, next: NextFunction) => {
    try {
      const user = (req as any).user; 
  
      if (!user || !user.role) {
        res.status(403).json({
          success: false,
          message: "Akses ditolak: tidak ada peran yang ditemukan.",
        });
        return 
      }
  
      if (user.role !== "user") {
         res.status(403).json({
          success: false,
          message: "Akses ditolak: hanya user yang diperbolehkan.",
        });
        return
      }
  
      res.status(200).json({
        success: true,
        message: "Akses accepted",
      });
      return
    
    } catch (err) {
      next(err);
    }
  };