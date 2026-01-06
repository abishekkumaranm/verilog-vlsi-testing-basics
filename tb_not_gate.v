module tb_not_gate;

    reg  a;
    wire y;

    // Instantiate the NOT gate
    not_gate uut (
        .a(a),
        .y(y)
    );

    initial begin
        // Dump waveform
        $dumpfile("not_gate.vcd");
        $dumpvars(0, tb_not_gate);

        // Test cases
        a = 0; #10;
        a = 1; #10;

        $finish;
    end

endmodule
