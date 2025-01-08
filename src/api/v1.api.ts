import { Router } from "express";
import mainRoute from "../routes/main.route";
import authRoute from "../routes/auth.route";
import legalRoute from "../routes/legal.route";
import esgRoute from "../routes/esg.route";
import downloadRoute from "../routes/download.route";
import adminRoute from "../routes/admin.route";
import smrpikRoute from "../routes/smrpik.route";
import momRoute from "../routes/mom.route";

const api = Router()
    .use("/", mainRoute)
    .use("/auth", authRoute)
    .use("/legal", legalRoute)
    .use("/mom", momRoute)
    .use("/esg", esgRoute)
    .use("/download", downloadRoute)
    .use("/smrpik", smrpikRoute)
    .use("/admin", adminRoute)

export default api