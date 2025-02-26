const db = require("./database");

const {Sport} = require("./Models/sport");
const {Team} = require("./Models/team");
const {Event} = require("./Models/event");
const {EventTeam} = require("./Models/eventTeam");

Sport.hasMany(Team, {foreignKey: "sportID"});
Team.belongsTo(Sport, {foreignKey: "sportID"});

Sport.hasMany(Event, {foreignKey: "sportID"});
Event.belongsTo(Sport, {foreignKey: "sportID"});

Event.hasMany(EventTeam, {foreignKey: "eventID"});
Team.hasMany(EventTeam, {foreignKey: "teamID"});
EventTeam.belongsTo(Event, {foreignKey: "eventID"});
EventTeam.belongsTo(Team, {foreignKey: "teamID"});

db.sync({alter: false, force: false}, () => {
    console.log("Database synced!");
})