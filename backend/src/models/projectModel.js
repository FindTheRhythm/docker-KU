const { Sequelize, DataTypes } = require('sequelize');
const db = require('../services/dbService');

const Project = db.define('Project', {
  name: { type: DataTypes.STRING, allowNull: false },
});

module.exports = Project;
