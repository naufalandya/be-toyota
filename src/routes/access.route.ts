import { Router } from "express";
import * as auth from "../controllers/auth/login.auth"
import { authenticateToken, checkAdminRoleAccess, checkAdminUserAccess } from "../middlewares/authenticate.middleware";

const accessRoute = Router()
    .get("/table-monthly-insentive-admin", authenticateToken, checkAdminRoleAccess)
    .get("/table-monthly-sales-admin", authenticateToken, checkAdminRoleAccess)
    .get("/page-account-admin", authenticateToken, checkAdminRoleAccess)


    .get("/table-monthly-insentive", authenticateToken, checkAdminUserAccess)
    .get("/table-monthly-sales", authenticateToken, checkAdminUserAccess)
export default accessRoute