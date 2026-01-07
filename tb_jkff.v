module tb_jkff;

    reg j, k, clk, rst;
    wire q;

    // Instantiate JK flip-flop
    jkff uut (
        .j(j),
        .k(k),
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // Clock generation: 10 ns period
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("jkff.vcd");
        $dumpvars(0, tb_jkff);

        // Initialize
        rst = 1;
        j = 0; k = 0;
        #12 rst = 0;

        // Hold (J=0, K=0)
        j = 0; k = 0; #20;

        // Reset (J=0, K=1)
        j = 0; k = 1; #20;

        // Set (J=1, K=0)
        j = 1; k = 0; #20;

        // Toggle (J=1, K=1)
        j = 1; k = 1; #40;

        $finish;
    end

endmodule
