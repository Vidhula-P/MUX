//Mux-style register with parameterized width
module scale_mux #(
    parameter WIDTH = 1
    )(
    output logic [7:0] out,
    input  logic [7:0] in_a,
    input  logic [7:0] in_b,
    input        sel_a
    );

// time unit and time precision declaration
timeunit 1ns;
timeprecision 100ps;

// Combinatorial
always_comb begin
    unique case(sel_a)
        1'b1: out = in_a;
        1'b0: out = in_b;
        default: out = 'x;
    endcase
end

endmodule
