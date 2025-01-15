import { Router } from "express";
import user from "../controllers/main/user.controller"
import { authenticateToken } from "../middlewares/authenticate.middleware";
import { uploadA, uploadLegal } from "../libs/multer.lib";

const userRoute = Router()
    .put("/", authenticateToken, uploadA.single("pdf"), user.editProfile)
    .put("/admin", authenticateToken, user.editProfileByAdmin)
    .get("/", authenticateToken, user.getProfile)
    .delete("/", authenticateToken, user.deleteUserById)
    .post("/", authenticateToken, user.addUser)


export default userRoute