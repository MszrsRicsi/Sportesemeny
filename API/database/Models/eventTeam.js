const {DataTypes} = require("sequelize");
const db = require("../database");

const EventTeam = db.define("eventteam", {
    eventID: {
        type: DataTypes.UUID,
        primaryKey: true,
        allowNull: false
    },
    teamID: {
        type: DataTypes.UUID,
        primaryKey: true,
        allowNull: false
    }
});

module.exports = {EventTeam};