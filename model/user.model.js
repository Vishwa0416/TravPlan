const mongoose = require('mongoose');
const db = require('../configuration/db');

const { Schema } = mongoose;

const userSchema = new Schema ({
    username :{
        type:String,
        required:true,
        unique:true,
    },
    email :{
        type:String,
        lowercase:true,
        required:true,
        unique:true,
    },
    password :{
        type:String,
        required:true,
    }
});

const UserModel = db.model('user',userSchema);

module.exports = UserModel;