import { getProductTypes } from "@/actions/productTypesAction";
import ProductTypes from "@/screens/product-type";
import React from "react";

const productTypeManagement = async () => {
  const productTypes = await getProductTypes()
  return (
    <div>
      <ProductTypes productTypes={productTypes} />
    </div>
  );
};

export default productTypeManagement;
