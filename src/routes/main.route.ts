import { Router } from "express";
import main from "../controllers/main/main.controller"

const mainRoute = Router()
    .put("/incentive/status", main.editStatusToSuccess)
    .post("/incentive", main.createIncentive)
    .get("/incentive/:id", main.getIncentiveById)

    .get("/incentive/a/all", main.getAllIncentives)
    .get("/incentive/a/duh", main.getAllIncentivesAllTime)
    .get("/incentive", main.getIncentivesThisMonth)
    .delete("/incentive", main.deleteInsentive)

export default mainRoute