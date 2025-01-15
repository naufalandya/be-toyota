import { Router } from "express";
import authRoute from "../routes/auth.route";
import userRoute from "../routes/user.route";
import mainRoute from "../routes/main.route";
import accessRoute from "../routes/access.route";


const api = Router()
    .use("/auth", authRoute)
    .use("/user", userRoute)
    .use("/main", mainRoute)
    .use("/access", accessRoute)

export default api