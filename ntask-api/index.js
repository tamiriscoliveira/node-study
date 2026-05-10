import express from "express";

import libsDB from "./libs/db.js";
import libsMiddleware from "./libs/middlewares.js";
import indexRoutes from "./routes/index.js";
import tasksRoutes from "./routes/tasks.js";
import libsBoot from "./libs/boot.js";

import tasksModel from "./models/tasks.js";

const app = express();

app.set("port", 3000);
app.set("json spaces", 4);

app.models = {};

// banco
const db = libsDB();

// models
db.models.Tasks = tasksModel(
  db.sequelize,
  db.Sequelize.DataTypes
);

app.db = db;

// middlewares
libsMiddleware(app);

// rotas
indexRoutes(app);
tasksRoutes(app);

// boot
libsBoot(app);