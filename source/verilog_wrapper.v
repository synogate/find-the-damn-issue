module sky130_fd_sc_hd_dlygate4sd3_1 (
    input wire A,
    output wire X
);

wire in = A;
wire out;
(* keep = "true" *) sky130_fd_sc_hd__dlygate4sd3_1 delay_noresize_ (.A(in), .X(out));

assign X = out;

endmodule