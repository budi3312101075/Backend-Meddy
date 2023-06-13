import Sequelize from 'sequelize'
import db from "../config/Database.js";
import Users from "./UserModel.js";

const {DataTypes} = Sequelize;

const Berita = db.define('berita',{
    uuid:{
        type: DataTypes.STRING,
        defaultValue: DataTypes.UUIDV4,
        allowNull: false,
        primaryKey: true,
        validate:{
            notEmpty: true
        }
    },
    gambar:{
        type: DataTypes.STRING,
        allowNull: false,
        validate:{
            notEmpty: true,
        }
    },
    judul:{
        type: DataTypes.STRING,
        allowNull: false,
        validate:{
            notEmpty: true,
            len: [2, 100]
        }
    },
    title:{
        type: DataTypes.STRING,
        allowNull: false,
        validate:{
            notEmpty: true,
        }
    },
    userId:{
        type: DataTypes.STRING,
        allowNull: false,
        validate:{
            notEmpty: true,
        }
    }
},{
    freezeTableName: true
});


export default Berita;