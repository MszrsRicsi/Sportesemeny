require("dotenv").config();
const express = require("express");
const app = express();

app.use(express.json());

app.use("/sports", require("./routes/sportRoutes"));
app.use("/teams", require("./routes/teamRoutes"));
app.use("/events", require("./routes/eventRoutes"));
app.use("/eventteams", require("./routes/eventTeamRoutes"));
app.use(require("./middlewares/errorHandler"));

require("./database/syncer");

app.listen(process.env.PORT, () => {
    console.log(`Server is listening on http://localhost:${process.env.PORT}`);
});