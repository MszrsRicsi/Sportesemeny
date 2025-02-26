const router = require("express").Router();
const {Sport} = require("../database/Models/sport");

router.get("/", async (req, res, next) => {
    try
    {
        res.status(200).json(await Sport.findAll());
    }
    catch (err)
    {
        next(err);
    }
});

module.exports = router;