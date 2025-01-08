import { PrismaClientKnownRequestError } from "@prisma/client/runtime/library";
import { Response, Request } from "express";
import Joi from "joi";
import { sendErrorEmail } from "../libs/nodemailer.lib";

const ENV = process.env.PORT as string;

export class ErrorWithStatusCode extends Error {
    statusCode: number;

    constructor(message: string, statusCode: number) {
        super(message); 
        this.name = this.constructor.name;
        this.statusCode = statusCode;
        
        Object.setPrototypeOf(this, ErrorWithStatusCode.prototype);
    }
}


export class ErrorValidation extends Error {
    statusCode: number;

    constructor(message: string, statusCode: number) {
        super(message); 
        this.name = this.constructor.name;
        this.statusCode = statusCode;
        
        Object.setPrototypeOf(this, ErrorWithStatusCode.prototype);
    }
}

const createErrorResponse = (status: number, message: string, res: Response) => {
    return res.status(status).json({
        status: false,
        message,
        data: null,
    });
};

const handlePrismaError = (err: PrismaClientKnownRequestError, res: Response) => {
    if (err.code === 'P2002') {
        return createErrorResponse(409, `${err.meta?.target} already used`, res);
    } else {
        console.log(err);
        const errorMessage = `Database Error: ${JSON.stringify(err, null, 2)}`;
        sendErrorEmail('Database Error', errorMessage);
        return createErrorResponse(400, 'Query bad request!', res);
    }
};

export const handleError = async (req: Request, err: unknown, res: Response) => {
    console.log(err); 

    if (err instanceof ErrorWithStatusCode) {
        return createErrorResponse(err.statusCode, err.message, res);
    }

    if (err instanceof Joi.ValidationError) {
        return createErrorResponse(400, err.message, res);
    }

    if (err instanceof PrismaClientKnownRequestError) {
        return handlePrismaError(err, res);
    }

    const errorMessage = `Internal Server Error: ${JSON.stringify(err, null, 2)}, Path: ${req.path}`;
    console.log(errorMessage);

    await sendErrorEmail('Internal Server Error', errorMessage);

    return res.status(500).json({
        status: false,
        message: ENV === 'production' ? 'Internal Server Error' : (err as Error).message,
        data: null,
    });
};
