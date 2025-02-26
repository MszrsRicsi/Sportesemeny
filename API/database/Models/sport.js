const {DataTypes} = require("sequelize");
const db = require("../database");

const Sport = db.define("sport", {
    id: {
        type: DataTypes.UUID,
        defaultValue: DataTypes.UUIDV4,
        primaryKey: true,
        allowNull: false
    },
    name: {
        type: DataTypes.STRING(50),
        unique: true
    }
});

module.exports = {Sport};