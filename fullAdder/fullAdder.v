`include "half_Adder.v"
module fulladder (
     input wire a,b,cin,
     output wire sum,cout
);
wire so,c1,c2;

halfadder u_ha1(
    .a(a),
    .b(b),
    .sum(so),
    .cout(c1)
);
halfadder u_ha2(
    .a(so),
    .b(cin),
    .sum(sum),
    .cout(c2)
);
assign cout =c1|c2;

endmodule