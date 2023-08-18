`timescale 1ns/1ps
module fulladder_tb();

reg a,b,cin;
wire sum,cout;

fulladder u_fa(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout) 

);
initial begin
    a=11;
    b=11;
    cin=1;
    #10;

    $display("the value of sum is %d",sum,"the value of carry %d",cout);
    $dumpfile("fullAdder.vcd");
    $dumpvars(0,fulladder_tb);
    #20;
end

    endmodule