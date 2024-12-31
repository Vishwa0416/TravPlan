const UserModel = require('../model/user.model')

class UserService{
    static async registerUser(username,password,email){
        try{
            const createUser = new UserModel({email,password,username});
            return await createUser.save();
        }catch(err){
            throw err;
        }
    }
}

module.exports = UserService;