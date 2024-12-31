const UserService = require('../services/user.services');

exports.register = async(req,res,next)=>{
    try{
        const {username,password,email} =req.body;

        const successRes = await UserService.registerUser(username,password,email);
        res.json({status:true,success:"User Registration Successfully"});
    }catch(error){
        throw error
    }
}