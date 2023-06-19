import Berita from "../models/BeritaModel.js";
import { Op } from "sequelize";

export const getBerita = async(req, res) => {
    try {
        let response;
        if(req.role === "admin"){
          response = await Berita.findAll({
            attributes:['uuid', 'judul', 'gambar', 'title'],
          });
        }else{
          response = await Berita.findAll({
            attributes:['uuid', 'judul', 'gambar', 'title'],
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

export const getBeritaById = async(req, res) => {
    try {
        const berita = await Berita.findOne({
          where:{
            uuid: req.params.id
          }
        });
        if(!berita) return res.status(404).json({msg:"data tidak ditemukan"});
        let response;
        if(req.role === "admin"){
          response = await Berita.findOne({
            attributes:['uuid', 'judul', 'gambar', 'title'],
            where:{
              uuid: berita.uuid
            },
          });
        }else{
          response = await Berita.findOne({
            attributes:['uuid', 'judul', 'gambar', 'title'],
            where:{
              [Op.and]:[{uuid: berita.uuid}, {userId: req.session.userId}],
            },
          });
        }
        res.status(200).json(response);
      } catch (error) {
        res.status(500).json({msg: error.message});
      }
}

export const createBerita = async (req, res) => {
    if (req.file === undefined) {
        return res.status(400).json({ msg: "No file uploaded" });
      }
      const {originalname : gambar, size} = req.file;
      
        const { judul, title} = req.body;
        const fileSize = size;
        const imageUrl = `${process.cwd()}\\images\\${gambar}`;
        if (fileSize > 5000000) {
          return res.status(422).json({ msg: "Image must be smaller than 5MB" });
        }
      
        try {
          await Berita.create({
            judul: judul,
            gambar: gambar,
            title: title,
            userId: req.session.userId
          });
    
          res.status(200).json({ msg: "Berita created successfully" });
        } catch (error) {
          console.log(error);
          res.status(500).json({ msg: "Error creating berita" });
        }
};

export const updateBerita = (req, res) => {
 
}

export const deleteBerita = async(req, res) => {
    try {
        const berita = await Berita.findOne({
          where:{
            uuid: req.params.id
          }
        });
        if(!berita) return res.status(404).json({msg:"data tidak ditemukan"});
        const { name, jenis, komposisi, kegunaan, efek } = req.body;
        if(req.role === "admin"){
          await Berita.destroy({
            where:{
              uuid: berita.uuid 
            }
          });
        }else{
              if (req.session.userId !== berita.userId) return res.status(403).json({msg: "akses terlarang"});
              await Berita.update({name, jenis, komposisi, kegunaan, efek},{
                where:{
                  [Op.and]:[{uuid: berita.uuid}, {userId: req.session.userId}],
                }
          });
        }
        res.status(200).json({msg: "berita sukses dihapus"});
      } catch (error) {
        res.status(500).json({msg: error.message});
      }
}

export const getBeritaAll = async(req, res) =>{
  try {
      const response = await Berita.findAll();
      res.status(200).json(response);
  } catch (error) {
      console.log(error.message);
  }
}

export const getBeritaAllById = async(req, res) =>{
  try {
      const response = await Berita.findOne({
          where:{
            uuid: req.params.id
          }
      });
      res.status(200).json(response);
  } catch (error) {
      console.log(error.message);
  }
}
