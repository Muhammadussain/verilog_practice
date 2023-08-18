`timescale 1ns/1ps

module memory_tb();

    reg [4:0] addr;
    reg wr;
    reg rd;
    reg clk;
    reg [7:0] wr_data;
    wire [7:0] rd_data;

    initial begin
        clk = 0;
        wr = 1;
        addr = 5'b00000;
        wr_data = 8'b10101011;

        #20;

        rd = 1;
        addr = 5'b00000;

        // Wait for a few clock cycles before displaying the value
        #10;

        $display("The value of data is %d", rd_data);

        $finish;
    end

    initial begin
        $dumpfile("simple_memory.vcd");
        $dumpvars(0, memory_tb);
    end

    always #5 clk = ~clk;

    memory u_memory (
        .clk(clk),
        .addr(addr),
        .wr(wr),
        .rd(rd),
        .wr_data(wr_data),
        .rd_data(rd_data)
    );

endmodule