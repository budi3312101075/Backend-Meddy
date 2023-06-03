import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import Users from "./UserModel.js";

const {DataTypes} = Sequelize;

const Obat = db.define('obat',{
    uuid:{
        type: DataTypes.STRING,
        defaultValue: DataTypes.UUIDV4,
        allowNul: false,
        validate:{
            notEmpty: true
        }
    },
    name:{
        type: DataTypes.STRING,
        allowNul: false,
        validate:{
            notEmpty: true,
            len: [2, 100]
        }
    },
    jenis:{
        type: DataTypes.STRING,
        allowNul: false,
        validate:{
            notEmpty: true,
        }
    },
    userId:{
        type: DataTypes.INTEGER,
        allowNul: false,
        validate:{
            notEmpty: true,
        }
    }
},{
    freezeTableName: true
});

Users.hasMany(Obat);
Obat.belongsTo(Users, {foreignKey: 'userId'});

export default Obat;