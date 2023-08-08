`timescale 1ns/1ps

module alu_tb();

    reg [7:0] a_tb;
    reg [7:0] b_tb;
    reg [2:0] op_tb;

    wire [7:0] res_tb;


   
initial begin 
    #0.1

        a_tb = 8'b00001011;
        b_tb = 8'b01010101;
        op_tb = 3'b000;

        
        $display("The value of res_tb is %d",  res_tb);

        
        $dumpfile("alu.vcd");
        $dumpvars(0, alu_tb);
        
        
        #10;
        


end 
     alu u_alu0 (
        .a_i(a_tb),
        .b_i(b_tb),
        .op_i(op_tb),
         
        .res_o(res_tb)
    );


    endmodule