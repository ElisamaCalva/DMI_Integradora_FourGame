// routes.js

import Express from "express";
import { createPlayer, FindPlayerByID, FindPlayerByEmail, updatePlayer, changePlayerPortrait, deletePlayer, findAll } from "../controllers/playerController.js";

const router = Express.Router();

router.post("/newPlayer", createPlayer);
router.get("/FindOne/:playerID", FindPlayerByID);
router.get("/FindOneBy/:playerEmail", FindPlayerByEmail);
router.put("/updatePlayer/:playerID", updatePlayer);
router.patch("/changePortrait/:playerID", changePlayerPortrait);
router.delete("/deletePlayer/:playerID", deletePlayer);
router.get("/findAll", findAll);

export { router };
