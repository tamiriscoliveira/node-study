import Sequelize from "sequelize";
import config from "./config.js";

let db = null;

export default () => {
  if (!db) {
    const sequelize = new Sequelize(
      config.database,
      config.username,
      config.password,
      config.params
    );

    db = {
      sequelize,
      Sequelize,
      models: {}
    };
  }

  return db;
};

/*

let sequelize = null;


const libsDB = {};

libsDB.getSequelize = () => {
  if (!sequelize) {
    const { database, username, password, params } = config;

    sequelize = new Sequelize(
      database,
      username,
      password,
      params
    );
  }

  return sequelize;
};

export default libsDB;


const Sequelize = require('sequelize');
const config = require('./config');

let sequelize = null;
const {
  db: { database, username, password, params }
} = config;
*/