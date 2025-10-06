import AddProductTypes from "@/screens/product-type/add";
import React from "react";

const AddProductTypePage = ({searchParams}) => {
  return (
    <div>
      <AddProductTypes searchParams={searchParams} />
    </div>
  );
};

export default AddProductTypePage;
