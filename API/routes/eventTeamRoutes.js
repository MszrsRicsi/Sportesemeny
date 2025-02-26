const router = require("express").Router();
const {EventTeam} = require("../database/Models/eventTeam");
const {sendMessage} = require("../utils");

router.post("/", async (req, res, next) => {
    if (!req.body.eventID || !req.body.teamID)
    {
        sendMessage(res, 400, false, "Hiányzó adatok!");
    }

    try
    {
        await EventTeam.create({
            eventID: req.body.eventID,
            teamID: req.body.teamID
        });

        sendMessage(res, 200, true, "Csapat és event összerendelve!");
    }
    catch (err)
    {
        next(err);
    }
});

module.exports = router;