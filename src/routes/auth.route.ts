import { Router } from "express";
import * as auth from "../controllers/auth/login.auth"

const authRoute = Router()
    .post("/signup", auth.registerByEmailUsernameController)
    .post("/signin", auth.loginByEmailController)
    // .post("/who-am-i", auth.authenticateToken, auth.authorizeFeatureWithCache('Map Lokasi Proyek', 'CREATE'), someController)


export default authRoute