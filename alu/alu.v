

module alu (a_i,b_i,op_i,res_o);

input wire [7:0] a_i;
input wire [7:0] b_i;
input wire [2:0] op_i;

output reg [7:0] res_o;

always @(*) begin


if (op_i == 3'b000)
  
  res_o = a_i+b_i;

else if (op_i == 3'b001)
  
  res_o = a_i-b_i;

else if (op_i == 3'b010)
  
  res_o = a_i&b_i;

else if (op_i == 3'b011)
  
  res_o = a_i|b_i;

else if (op_i == 3'b100)
  
  res_o = a_i^b_i;

else if (op_i == 3'b000)
  
  res_o = a_i<<b_i;

else 

res_o =000000000;

end
    
endmodule