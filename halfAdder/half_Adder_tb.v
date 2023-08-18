`timescale 1ns/1ps
module halfadder_tb ();
reg a;
reg b;
wire sum;
wire cout;

initial begin
    
    a=11;
    b =11 ;
#10;
$display("The sum is %d",so,"the value of cout is %d",cout);
$dumpfile("halfadder.vcd");
$dumpvars(0,halfadder_tb);

#10;
end

halfadder u_halfadder_tb(
    .a(a),
    .b(b),
    .sum(so),
    .cout (cout) 
);
    


endmodule