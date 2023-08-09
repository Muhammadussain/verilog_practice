module leftshiftreg (in,clk,rst,ex,out);

input wire [3:0] in;
input wire clk;
input wire rst;
input wire ex;

output reg  [3:0] out;

always @(posedge clk) begin
    if(rst)

    out=4'b0000;

    else begin

    out ={ex,in [2:0]};


    end
    
end
    
 endmodule