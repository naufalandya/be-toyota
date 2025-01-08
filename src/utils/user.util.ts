
import { hash, verify } from "argon2"
import prisma from "../libs/prisma.lib"

export const findUserByUsername = async (username : string) => {
    try {
        return await prisma.users.findUnique({
            where : {
                username : username
            }
        })

    } catch (err) {
        throw err
    }
}

export const findUserByEmail = async (email : string) => {
    try {
        return await prisma.users.findUnique({
            where : {
                email : email
            },
            select : {
                id : true,
                username : true,
                password : true,
                full_name : true,
                email : true,
                project_users : {
                    select : {
                        project_id : true
                    }
                }
            }
        })
        
    } catch (err) {
        throw err
    }
}

export const hashPassword = async (password : string) => {
    return await hash(password, { type : 2})
}

export const matchPassword = async (hashedPassword : string, password : string) => {
    return await verify(hashedPassword, password)
}

export const createUser = async (fullname : string, username : string, email : string, hashedPassword : string) => {
    try {
        await prisma.users.create({
            data: {
              full_name: fullname,
              username,
              email,
              password: hashedPassword,
              created_at: new Date(),
              updated_at: new Date(),
            },
          });
    } catch (err) {
        throw err
    }
}