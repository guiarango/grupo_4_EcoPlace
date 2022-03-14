module.exports = (sequelize, DataTypes) => {
  
    let alias = "Product";
    let cols = {
      product_name:{
        type: DataTypes.STRING
      },
      product_description:{
        type: DataTypes.STRING
      },
      product_technical_description:{
        type: DataTypes.STRING
      },
      product_other_description:{
        type: DataTypes.STRING
      },
      category_id:{
        type: DataTypes.INTEGER
      },
      product_price:{
        type: DataTypes.FLOAT
      },
      product_image:{
        type: DataTypes.STRING  
      }
    }
    let config = {
      tableName: "products",
      timestamps: false,
    };

  const Product = sequelize.define(alias, cols, config);

  // Product.associate = function(model) {
  //   Product.belongsTo(model.category, {
  //     as: "categoria",
  //     foreignKey: "product_id"
  //   });
  // }

  return Product;
};
