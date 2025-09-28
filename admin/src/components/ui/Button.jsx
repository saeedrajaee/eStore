import { cn } from "@/lib/utils";

const Button = ({ className, onClick, children, ...props }) => {
  return (
    <div>
      <button className={cn("custom-submit-btn", className)} onClick={onClick}>
        {children}
      </button>
    </div>
  );
};

export default Button;
