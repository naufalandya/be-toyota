import { NextFunction, Request, Response } from "express"
import * as userUtil from "../../utils/user.util"
import { loginSchemaEmail, registerSchema } from "../../validations/auth.validation"
import { ErrorWithStatusCode } from "../../class/error"
import jwt from 'jsonwebtoken';

export const registerByEmailUsernameController = async(req : Request, res : Response, next : NextFunction) => {
    try {

        const { email, password, fullname, username } = await registerSchema.validateAsync(req.body);

        console.log(req.body)

        const [existingEmail] = await Promise.all([
            userUtil.findUserByEmail(email),
          ]);
        
          if (existingEmail) {
            return next(new ErrorWithStatusCode("email is already registered", 409));
          }
    
          const hashedPassword = await userUtil.hashPassword(password)

          console.log(hashedPassword)


          if (typeof hashedPassword === "undefined") {
            return next(new ErrorWithStatusCode("Something went wrong during the signup process", 401));
        }

        await userUtil.createUser(email, hashedPassword)


        res.status(201).json({
            status : true,
            message : 'success'
        })

    } catch (err) {
        next(err)
    }
}

export const loginByEmailController = async(req : Request, res : Response, next : NextFunction) => {
    try {
        const { email, password } = await loginSchemaEmail.validateAsync(req.body);

        const isEmail = await userUtil.findUserByEmail(email)

        console.log(isEmail)

        if(!isEmail){
            return next(new ErrorWithStatusCode("email does not belong to any account!", 404));
        }

        if(!isEmail.password){
            const payload = {
                id : isEmail.id,
            }
            const token = jwt.sign(payload,(process.env.SECRET_KEY as unknown as string),{
                algorithm: 'HS512',
                expiresIn: '7d'
            })
    
    
            const response = {
                status : true,
                message: "Succesfully login!",
                data: {   
                    email : isEmail.email,             
                    token: token
                }
              }
            
            res.status(200).json(
                response
            );
            return
        }

        if (!isEmail.password.startsWith('$argon')) {
            return next(new ErrorWithStatusCode("Invalid hashed password format.", 400));
          }
          

        const isMatch = await userUtil.matchPassword(isEmail.password, password)

        if(!isMatch){
            return next(new ErrorWithStatusCode("password is not match!", 401));
        }


        const payload = {
            id : isEmail.id,
            role : isEmail.role
        }

        console.log(isMatch)

        const token = jwt.sign(payload,(process.env.SECRET_KEY as unknown as string),{
            algorithm: 'HS512',
            expiresIn: '7d'
        })


        const response = {
            status : true,
            message: "Succesfully login!",
            data: {   
                email : isEmail.email,             
                token: token
            }
          }
        
        res.status(200).json(
            response
        );

    } catch (err) {
        next(err)
    }
}