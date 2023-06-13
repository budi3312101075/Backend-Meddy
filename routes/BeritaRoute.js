import express from "express";
import {
    getBerita,
    getBeritaById,
    createBerita,
    updateBerita,
    deleteBerita
} from "../controllers/Berita.js"
import { verifyUser } from "../middleware/AuthUser.js";
import imageFilter from "../middleware/multer.js"


const router = express.Router();

router.get('/berita', verifyUser, getBerita);
router.get('/berita/:id',verifyUser, getBeritaById);
router.post('/berita',verifyUser,imageFilter, createBerita);
router.patch('/berita/:id',verifyUser, updateBerita);
router.delete('/berita/:id',verifyUser, deleteBerita);

export default router;