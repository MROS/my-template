module and4(x, y, out);
    input  [3:0] x;
    input  [3:0] y;
    output [3:0] out;

    assign out = x & y;

endmodule

