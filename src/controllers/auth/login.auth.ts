import { NextFunction, Request, Response } from "express"
import * as userUtil from "../../utils/user.util"
import { loginSchemaEmail, registerSchema } from "../../validations/auth.validation"
import { ErrorWithStatusCode } from "../../class/error"
import jwt from 'jsonwebtoken';

export const registerByEmailUsernameController = async(req : Request, res : Response, next : NextFunction) => {
    try {

        const { email, password, fullname, username } = await registerSchema.validateAsync(req.body);

        console.log(req.body)

        const [existingEmail, existingUsername] = await Promise.all([
            userUtil.findUserByEmail(email),
            userUtil.findUserByUsername(username),
          ]);
        
          if (existingEmail) {
            return next(new ErrorWithStatusCode("email is already registered", 409));
          }
      
          if (existingUsername) {
            return next(new ErrorWithStatusCode("username is already registered", 409));
          }

          const hashedPassword = await userUtil.hashPassword(password)

          console.log(hashedPassword)


          if (typeof hashedPassword === "undefined") {
            return next(new ErrorWithStatusCode("Something went wrong during the signup process", 401));
        }

        await userUtil.createUser(fullname, username, email, hashedPassword)


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
            return next(new ErrorWithStatusCode("username does not belong to any account!", 404));
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
            username : isEmail.username,
            project_assigned_id : isEmail.project_users[0].project_id
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
                full_name : isEmail.full_name,
                username : isEmail.username,
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