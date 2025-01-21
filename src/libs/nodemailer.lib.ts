import nodemailer from 'nodemailer';

export const sendEmail = async (subject: string, message: string, email : string) => {
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
            to: email,
            subject: subject,
            text: message,
            html: message, // Send HTML content
        },
    ];

    console.log(emailOptions)

    await Promise.all(emailOptions.map(options => transporter.sendMail(options)));
};
