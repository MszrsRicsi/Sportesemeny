const router = require("express").Router();
const {Team} = require("../database/Models/team");
const {sendMessage} = require("../utils");

router.get("/", async (req, res, next) => {
    try
    {
        res.status(200).json(await Team.findAll());
    }
    catch (err)
    {
        next(err);
    }
});

router.post("/", async (req, res, next) => {
    if (!req.body.name || !req.body.sportID)
    {
        sendMessage(res, 400, false, "Hiányzó adatok!");
    }

    try
    {
        await Team.create({
            name: req.body.name,
            sportID: req.body.sportID
        });

        sendMessage(res, 200, true, "Csapat létrehozva!");
    }
    catch (err)
    {
        next(err);
    }
});


module.exports = router;