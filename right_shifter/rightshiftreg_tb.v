module rightshiftreg_tb;

    reg [3:0] in_data;
    reg clk;
    reg rst;
    reg ex_tb=0;
    wire [3:0] out_data;

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 0;
        #10;
        ex_tb =0;
         in_data = 4'b0100;
        #10;
        ex_tb =0;
        in_data = 4'b0010;
        #10;

        $finish;
    end

    rightshiftreg u_shiftut (
        .in(in_data),
        .clk(clk),
        .rst(rst),
        .ex(ex_tb),
        .out(out_data)
    );

    initial begin
        $dumpfile("rightshiftreg.vcd");
        $dumpvars(0, rightshiftreg_tb);
    end
endmodule