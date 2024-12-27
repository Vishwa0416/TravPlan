const mongoose = require('mongoose');

const connection = mongoose.createConnection('mongodb://localhost:27017');

model.export = connection;