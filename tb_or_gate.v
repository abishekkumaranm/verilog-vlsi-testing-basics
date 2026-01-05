module tb_or_gate;

    reg a;
    reg b;
    wire y;

    or_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_or_gate);

        // Apply test cases
        a = 0; b = 0; #20;
        a = 0; b = 1; #20;
        a = 1; b = 0; #20;
        a = 1; b = 1; #20;

        $finish;
    end

endmodule

