module buzzer(
        input baseClk;
        input [$clog2(1000000) - 1:0] freq;
        input rst;
        output buzz_clk;
);

        // instantiate a clock divider
        clock_divider freq_generator(
                .clk(baseClk),
                .speed(freq),
                .rst(rst),
                .outClk(buzz_clk)
        );

endmodule
