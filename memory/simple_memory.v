module memory (
    input wire [4:0] addr,
    input wire wr,
    input wire rd,
    input wire clk,
    input wire [7:0] wr_data,
    output reg [7:0] rd_data
);

    reg [12:0] mem_array [31:0];

    always @(posedge clk) begin
        if (wr) mem_array[addr] <= {addr, wr_data};
        if (rd) rd_data <= mem_array[addr][7:0];
    end

endmodule