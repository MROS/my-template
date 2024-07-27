module top(
    input  [3:0] x,
    input  [3:0] y,
    input op,
    output [3:0] out
);

    wire [3:0] and_out, or_out;    

    and4 my_and(
        .x(x),
        .y(y),
        .out(and_out)
    );
    or4 my_or(
        .x(x),
        .y(y),
        .out(or_out)
    );
    assign out = op ? and_out : or_out;

endmodule