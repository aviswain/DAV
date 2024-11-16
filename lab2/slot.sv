module slot(
	input clk,
	input isRunning,
	output logic [3:0] num
);

	always @(posedge clk) begin
		if (isRunning) begin
			num <= {num[0] ~^ num[1], num[3:1]};
		end
	end

endmodule
