require("dotenv").config();
const {Sequelize} = require('sequelize');

const db = new Sequelize(
    process.env.DBNAME, 
    process.env.DBUSER, 
    process.env.DBPASS,
    {
        host: process.env.DBHOST,
        dialect: 'mysql',
        define: {
          timestamps: false
        }
  }
);

module.exports = db;