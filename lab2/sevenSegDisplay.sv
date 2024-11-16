module sevenSegDisplay(
	input [3:0] nums [2:0],
	output logic [7:0] displayBits [5:0]
);

	logic [3:0] nums_split [5:0];

	always_comb begin
		
		// Separate each input number into its ones and tens digits
		for (int i = 0; i < 3; i = i+1) begin
			nums_split[(i*2)] = nums[i] / 10;
			nums_split[(i*2)+1] = nums[i] % 10;
		end
		
		// Get the seven-segement display encoding for each number
		for (int j = 0; j < 6; j = j+1) begin
			case(nums_split[j])
				0: displayBits[j] = 8'b11000000;
                        	1: displayBits[j] = 8'b11111001;
                      		2: displayBits[j] = 8'b10100100;
                        	3: displayBits[j] = 8'b10110000;
                        	4: displayBits[j] = 8'b10011001;
                        	5: displayBits[j] = 8'b10010010;
                        	6: displayBits[j] = 8'b10000010;
                        	7: displayBits[j] = 8'b10000111;
                        	8: displayBits[j] = 8'b10000000;
                        	9: displayBits[j] = 8'b10011000;
          			default: displayBits[j] = 8'b10111111;
                	endcase
		end
	end

endmodule
