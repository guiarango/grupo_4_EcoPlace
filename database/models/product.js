module.exports = (sequelize, DataTypes) => {
  const Product = sequelize.define(
    "Product",
    {
      product_name: DataTypes.NUMBER,
      product_description: DataTypes.STRING,
      product_technical_description: DataTypes.STRING,
      product_other_description: DataTypes.STRING,
      category_id: DataTypes.INTEGER,
      product_price: DataTypes.FLOAT,
      product_image: DataTypes.STRING
    },
    {
      tableName: "products",
      timestamps: false,
    }
  );

  return Product;
};
