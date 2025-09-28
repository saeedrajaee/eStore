import { cn } from "@/lib/utils";
import React from "react";

const Input = ({ type, className, ...props }) => {
  return (
    <div>
      <input
        type={type}
        placeholder="Re-enter password"
        className={cn("custom-input", className)}
        {...props}
      />
    </div>
  );
};

export default Input;
