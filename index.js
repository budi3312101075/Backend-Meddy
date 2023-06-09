import express from "express";
import cors from "cors";
import session from "express-session";
import dotenv from "dotenv";
import db from "./config/Database.js";
import SequelizeStore from "connect-session-sequelize";
import UserRoute from "./routes/UserRoute.js";
import ObatRoute from "./routes/ObatRoute.js";
import AuthRoute from "./routes/AuthRoute.js";
import BeritaRoute from "./routes/BeritaRoute.js";

dotenv.config();

const app = express();

const sessionStore = SequelizeStore(session.Store);

const store = new sessionStore({
  db: db,
});

// (async()=>{
//     await db.sync();
// })();

app.use(
  session({
    secret: process.env.SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    store: store,
    cookie: {
      secure: "auto",
    },
  })
);
app.use(
  cors({
    credentials: true,
    origin: [
      `http://localhost:${process.env.APP_PORT}`,
      "http://localhost:5173",
    ],
  })
);

app.use(express.json());
app.use(UserRoute);
app.use(ObatRoute);
app.use(AuthRoute);
app.use(BeritaRoute);

// store.sync();

app.listen(process.env.APP_PORT, () => {
  console.log(`http://localhost:${process.env.APP_PORT}`);
});