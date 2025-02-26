const router = require("express").Router();
const db = require("../database/database");
const {Event} = require("../database/Models/event");
const {sendMessage} = require("../utils");

router.get("/", async (req, res, next) => {
    try
    {
        res.send(await db.query(`SELECT * FROM event_details`));
    }
    catch (err)
    {
        next(err);
    }
});

router.get("/:id/teams", async (req, res, next) => {
    if (!req.params.id)
    {
        sendMessage(res, 400, false, "Hiányzó azonosító!");
    }

    try
    {
        res.status(200).json(await db.query(`SELECT * FROM teams_participation WHERE eventID = '${req.params.id}'`));
    }
    catch (err)
    {
        next(err);
    }
});

router.post("/", async (req, res, next) => {
    if (!req.body.sportID || !req.body.date || !req.body.location)
    {
        sendMessage(res, 400, false, "Hiányzó adatok!");
    }

    try
    {
        await Event.create({
            sportID: req.body.sportID,
            date: req.body.date,
            location: req.body.location
        });

        sendMessage(res, 200, true, "Event létrehozva!");
    }
    catch (err)
    {
        next(err);
    }
});


module.exports = router;