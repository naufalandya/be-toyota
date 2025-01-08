import { Router } from "express";
import * as authController from "../controllers/auth/login.auth"
import * as auth from "../middlewares/authenticate.middleware";
import { someController } from "../controllers/main/whoiam.main";

const authRoute = Router()
    .post("/signup", authController.registerByEmailUsernameController)
    .post("/signin", authController.loginByEmailController)
    .post("/who-am-i", auth.authenticateToken, auth.authorizeFeatureWithCache('Map Lokasi Proyek', 'CREATE'), someController)


export default authRoute