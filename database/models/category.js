module.exports = (sequelize, DataTypes) => {
    let alias = "Categories";

    let cols = {
        // id: {
        //     type: DataTypes.INTEGER,
        //     primaryKey: true,
        //     autoIncrement: true
        // },
        category_name:{
            type: DataTypes.STRING
        },
        user_id:{
            type: DataTypes.INTEGER
        }
    };
    let config = {
        tableName: "categories",
        timestamp: false 
    };

    const Categories = sequelize.define(alias, cols, config);

    return Categories;
}