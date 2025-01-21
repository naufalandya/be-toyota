
import { hash, verify } from "argon2"
import prisma from "../libs/prisma.lib"

export const findUserByEmail = async (email : string) => {
    try {
        return await prisma.users.findUnique({
            where : {
                email : email
            },
            select : {
                id : true,
                password : true,
                email : true,
                role : true
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

export const createUser = async (email : string, hashedPassword : string) => {
    try {
        await prisma.users.create({
            data: {
              email,
              password: hashedPassword,
              nik : `${Math.random(), Math.random()}`
            },
          });
    } catch (err) {
        throw err
    }
}