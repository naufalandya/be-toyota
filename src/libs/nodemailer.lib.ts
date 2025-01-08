import nodemailer from 'nodemailer';

export const sendErrorEmail = async (subject: string, message: string) => {
    const transporter = nodemailer.createTransport({
        host: process.env.SERVER_HOST as string,
        port: 465,
        secure: true,
        auth: {
            user: process.env.SERVER_EMAIL as string,
            pass: process.env.SERVER_PASSWORD as string,
        },
    });

    const emailOptions = [
        {
            from: process.env.SERVER_EMAIL as string,
            to: process.env.ADMINISTRATOR_1 as string,
            subject: subject,
            text: message,
        },
        {
            from: process.env.SERVER_EMAIL as string,
            to: process.env.ADMINISTRATOR_2 as string,
            subject: subject,
            text: message,
        },
    ];

    console.log(emailOptions)

    await Promise.all(emailOptions.map(options => transporter.sendMail(options)));
};
