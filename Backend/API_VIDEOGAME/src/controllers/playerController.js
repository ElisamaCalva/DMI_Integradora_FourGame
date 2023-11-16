import Player from "../models/player.js";
import dbConnection from "../config/db.js";
import { where } from "sequelize";

const createPlayer = async (rq,rs)=> {
    console.log("Se ha solicitado la creacion de un nuevo usuario");
    const{name, email, nickname, birthdate} = rq.body
    console.log(rq.body)
    const newPlayer = await Player.create(rq.body)

    if(newPlayer){
        rs.status(200);
        rs.json(`Se ha creado un nuevo usuario con el nombre: ${name}, Email: ${email}, Apodo: ${nickname}, Fecha de Nacimiento: ${birthdate}`);
    }
    else{
        rs.status(400);
        rs.json({
            messageStatus: `Hubo un error al intentar crear un nuevo usuario, verificar los datos ingresados de nuevo`
           });
    }
 
}

const findAll = async (rq,rs)=>{
    console.log("Se ha solicitado la consulta de todos los jugadores");

    const allPlayers =  await Player.findAll()
    console.log(allPlayers);

    if(allPlayers === null)
    {
       rs.json({
        messageStatus: `No hay jugadores registrados`
       });
    }
    else{
        rs.status(200);
        rs.json(allPlayers);
    }
}

const FindPlayerByID = async (rq,rs)=>{
    const playerID = rq.params.playerID
    console.log(`Se ha solicitado buscar al jugador con el id: ${playerID}`);

    const playerFound = await Player.findByPk(playerID)
    if(!playerFound === null )
    {
        rs.status(400);
        rs.json({messageStatus: `El jugador con el id : ${playerID}se ha encontrado en la DB`})
    }
    else{
        rs.status(200)
        rs.json(playerFound)
    }
    
}

const FindPlayerByEmail = async (rq,rs)=>{
    const playerEmail = rq.params.playerEmail
    console.log(`Se ha solicitado buscar al jugador con el id: ${playerEmail}`);

    const playerFound = await Player.findOne({where : {email : playerEmail}});
    if(!playerFound === null)
    {
        rs.status(400);
        rs.json({messageStatus: `El jugador con el email : ${playerEmail}se ha encontrado en la DB`})
    }
    else{
        rs.status(200)
        rs.send(playerFound);
    }
}
const updatePlayer = async (rq, rs) => {
    try {
        const playerID = rq.params.playerID;
        console.log(`Se ha solicitado la actualización de un nuevo usuario. ID recibido: ${playerID}`);

        const { name, email, nickname, password, birthdate, portrait_img } = rq.body;

        const player = await Player.findByPk(playerID);

        if (!player) {
            return rs.status(404).json({ messageStatus: `No se encontró al jugador con ID: ${playerID}` });
        }

        await player.update({
            name,
            email,
            nickname,
            password,
            birthdate,
            portrait_img,
        });

        rs.status(200).json(player);
    } catch (error) {
        console.error('Error durante la actualización del jugador:', error);
        rs.status(500).json({ error: 'Error interno del servidor' });
    }
};



const changePlayerPortrait = (rq,rs)=>{
     const playerID = rq.params.playerID
    console.log(`Se ha solicitado un cambio con el id: ${playerID}`);
    rs.status(200)
    rs.send(`Se ha solicitado un cambio con el id: ${playerID}`);
}
const deletePlayer = async (rq, rs) => {
    try {
        const playerID = rq.params.playerID;
        console.log(`Se ha solicitado la eliminación de la cuenta: ${playerID}`);

        const playerToDelete = await Player.findByPk(playerID);

        if (!playerToDelete) {
            return rs.status(404).json({ messageStatus: `No se encontró al jugador con ID: ${playerID}` });
        }

        await playerToDelete.destroy();

        rs.status(200).json({ messageStatus: `Se eliminó exitosamente al jugador con ID: ${playerID}` });
    } catch (error) {
        console.error('Error durante la eliminación del jugador:', error);
        rs.status(500).json({ error: 'Error interno del servidor' });
    }
};

export {createPlayer,
    FindPlayerByID,
    FindPlayerByEmail,
    updatePlayer,
    changePlayerPortrait,
    deletePlayer,
    findAll
}
