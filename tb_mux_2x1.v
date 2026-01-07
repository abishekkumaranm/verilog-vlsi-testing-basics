module tb_mux_2x1;

    reg  a, b, sel;
    wire y;

    // Instantiate 2x1 MUX
    mux_2x1 uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("mux_2x1.vcd");
        $dumpvars(0, tb_mux_2x1);

        // Test cases
        a = 0; b = 0; sel = 0; #10;
        a = 0; b = 1; sel = 0; #10;
        a = 1; b = 0; sel = 0; #10;
        a = 1; b = 1; sel = 0; #10;

        a = 0; b = 0; sel = 1; #10;
        a = 0; b = 1; sel = 1; #10;
        a = 1; b = 0; sel = 1; #10;
        a = 1; b = 1; sel = 1; #10;

        $finish;
    end

endmodule
