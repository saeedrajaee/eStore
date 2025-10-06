import { getProducts } from "@/actions/ProductActions";
import Products from "@/screens/products";
import React from "react";

const ProductsManagement = async () => {
  const products = await getProducts();
  return (
    <div>
      <Products products={products}/>
    </div>
  );
};

export default ProductsManagement;
