import express from "express";
import {
    getObat,
    getObatById,
    createObat,
    updateObat,
    deleteObat,
    getObatAll,
    getObatAllById
} from "../controllers/Obat.js";
import { verifyUser } from "../middleware/AuthUser.js";
import imageFilter from "../middleware/multer.js"

const router = express.Router();

router.get('/obats', getObatAll);
router.get('/obats/:id', getObatAllById);
router.get('/obat', verifyUser, getObat);
router.get('/obat/:id',verifyUser, getObatById);
router.post('/obat',verifyUser, imageFilter, createObat);
router.patch('/obat/:id',verifyUser, updateObat);
router.delete('/obat/:id',verifyUser, deleteObat);

export default router;