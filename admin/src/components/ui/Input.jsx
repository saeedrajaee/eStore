import { cn } from "@/lib/utils";
import React from "react";

const Input = ({ type, className, ...props }) => {
  return (
    
      <input
        type={type}
        placeholder="Re-enter password"
        className={cn("custom-input", className)}
        {...props}
      />
   
  );
};

export default Input;
