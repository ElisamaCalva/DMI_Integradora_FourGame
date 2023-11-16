import { DataTypes } from "sequelize";
import dbConnection from "../config/db.js";


const Player = dbConnection.define("tbb_players", {
    name: {
        type: DataTypes.STRING(255),
        allowNull: false
    },
    email: {
        type: DataTypes.STRING(100), // Asumiendo que es un campo de texto para el correo electrónico
        allowNull: false,
        unique: true
    },
    nickname: {
        type: DataTypes.STRING(255),
        allowNull: false, // Puedes cambiar esto según tus requisitos
        unique: true
    },
    password: {
        type: DataTypes.STRING(255),
        allowNull: false // Asegúrate de manejar las contraseñas de manera segura
    },
    birthdate:{
        type: DataTypes.DATE,
        allowNull: false,
    },
    portrait_img: DataTypes.STRING(255),

});

export default Player;
