import { Sequelize } from "sequelize";

const db = new Sequelize('meddy', 'root', '', {
    host: "localhost",
    dialect: "mysql"
});

export default db;