const {DataTypes} = require("sequelize");
const db = require("../database");

const Event = db.define("event", {
    id: {
        type: DataTypes.UUID,
        defaultValue: DataTypes.UUIDV4,
        primaryKey: true,
        allowNull: false
    },
    sportID: {
        type: DataTypes.UUID,
        allowNull: false
    },
    date: {
        type: DataTypes.DATE,
        allowNull: false
    },
    location: {
        type: DataTypes.STRING(100)
    }
});

module.exports = {Event};