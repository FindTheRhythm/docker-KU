const { Sequelize, DataTypes } = require('sequelize');
const db = require('../services/dbService');

const Task = db.define('Task', {
  title: { type: DataTypes.STRING, allowNull: false },
  status: { type: DataTypes.STRING, defaultValue: 'pending' },
});

module.exports = Task;
