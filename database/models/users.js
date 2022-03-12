module.exports = (Sequelize, DataTypes) => {
    let alias = "Usuarios";

    let cols = {
        user_id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        user_name:{
            type: DataTypes.STRING
        },
        user_password:{
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
