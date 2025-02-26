const {DataTypes} = require("sequelize");
const db = require("../database");

const Team = db.define("team", {
    id: {
        type: DataTypes.UUID,
        defaultValue: DataTypes.UUIDV4,
        primaryKey: true,
        allowNull: false
    },
    name: {
        type: DataTypes.STRING(50),
        unique: true
    },
    sportID: {
        type: DataTypes.UUID,
        allowNull: false
    }
});

module.exports = {Team};