import Obat from "../models/ObatModel.js";
import { Op } from "sequelize";
import Users from "../models/UserModel.js";
import path from "path";

export const getObat = async(req, res) => {
  try {
    let response;
    if(req.role === "admin"){
      response = await Obat.findAll({
        attributes:['uuid', 'gambar', 'name', 'jenis','komposisi','kegunaan','efek'],
      });
    }else{
      response = await Obat.findAll({
        attributes:['uuid', 'gambar', 'name', 'jenis','komposisi','kegunaan','efek'],
        where:{
          userId: req.session.userId
        },
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({msg: error.message});
  }
}

export const getObatById = async(req, res) => {
  try {
    const obat = await Obat.findOne({
      where:{
        uuid: req.params.id
      }
    });
    if(!obat) return res.status(404).json({msg:"data tidak ditemukan"});
    let response;
    if(req.role === "admin"){
      response = await Obat.findOne({
        attributes:['uuid', 'gambar', 'name', 'jenis','komposisi','kegunaan','efek'],
        where:{
          uuid: obat.uuid
        },
      });
    }else{
      response = await Obat.findOne({
        attributes:['uuid', 'gambar', 'name', 'jenis','komposisi','kegunaan','efek'],
        where:{
          [Op.and]:[{uuid: obat.uuid}, {userId: req.session.userId}],
        },
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({msg: error.message});
  }
}

export const createObat = async (req, res) => {
  if (req.file === undefined) {
    return res.status(400).json({ msg: "No file uploaded" });
  }
  const {originalname : gambar, size} = req.file;
  
    const { name, jenis, komposisi, kegunaan, efek } = req.body;
    const fileSize = size;
    const imageUrl = `${process.cwd()}\\images\\${gambar}`;
    if (fileSize > 5000000) {
      return res.status(422).json({ msg: "Image must be smaller than 5MB" });
    }
  
    try {
      await Obat.create({
        name: name,
        gambar: gambar,
        jenis: jenis,
        komposisi: komposisi,
        kegunaan: kegunaan,
        efek: efek,
        userId: req.session.userId
      });

      res.status(200).json({ msg: "Obat created successfully" });
    } catch (error) {
      console.log(error);
      res.status(500).json({ msg: "Error creating obat" });
    }
  };

export const updateObat = async(req, res) => {
  // try {
  //   const obat = await Obat.findOne({
  //     where:{
  //       uuid: req.params.id
  //     }
  //   });
  //   if(!obat) return res.status(404).json({msg:"data tidak ditemukan"});
  //   const { name, jenis, komposisi, kegunaan, efek } = req.body;
  //   if(req.role === "admin"){
  //     await Obat.update({name, jenis, komposisi, kegunaan, efek},{
  //       where:{
  //         uuid: obat.uuid 
  //       }
  //     });
  //   }else{
  //     if (req.session.userId !== obat.userId) return res.status(403).json({msg: "akses terlarang"});
  //     await Obat.update({name, jenis, komposisi, kegunaan, efek},{
  //       where:{
  //         [Op.and]:[{uuid: obat.uuid}, {userId: req.session.userId}],
  //       }
  //     });
  //   }
  //   res.status(200).json({msg: "obat sukses diupdate"});
  // } catch (error) {
  //   res.status(500).json({msg: error.message});
  // }
}

export const deleteObat = async(req, res) => {
try {
    const obat = await Obat.findOne({
      where:{
        uuid: req.params.id
      }
    });
    if(!obat) return res.status(404).json({msg:"data tidak ditemukan"});
    const { name, jenis, komposisi, kegunaan, efek } = req.body;
    if(req.role === "admin"){
      await Obat.destroy({
        where:{
          uuid: obat.uuid 
        }
      });
    }else{
      await Obat.destroy({
        where:{
          uuid: obat.uuid
        }
      });
    }
    res.status(200).json({msg: "obat sukses dihapus"});
  } catch (error) {
    res.status(500).json({msg: error.message});
  }
}



