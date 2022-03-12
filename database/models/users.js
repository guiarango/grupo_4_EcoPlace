module.exports = (sequelize, DataTypes) => {
    let alias = "Usuarios";

    let cols = {
        // id: {
        //     type: DataTypes.INTEGER,
        //     primaryKey: true,
        //     autoIncrement: true
        // },
        user_name:{
            type: DataTypes.STRING
        },
        user_email:{
            type: DataTypes.STRING
        },
        user_password:{
            type: DataTypes.STRING  
        },
        user_image:{
            type: DataTypes.STRING
        }
    };
    let config = {
        tableName: "users",
        timestamp: false 
    };

    const Usuarios = sequelize.define(alias, cols, config);

    return Usuarios;
}
