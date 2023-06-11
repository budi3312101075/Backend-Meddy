import express from "express";
import {
    getObat,
    getObatById,
    createObat,
    updateObat,
    deleteObat
} from "../controllers/Obat.js";
import { verifyUser } from "../middleware/AuthUser.js";
import imageFilter from "../middleware/multer.js"

const router = express.Router();

router.get('/obat', verifyUser, getObat);
router.get('/obat/:id',verifyUser, getObatById);
router.post('/obat', imageFilter, createObat);
router.patch('/obat/:id', updateObat);
router.delete('/obat/:id',verifyUser, deleteObat);

export default router;