module sevenSegDigit(
        input [3:0] digit;
        output logic [7:0] displayBits;
);

        always_comb begin
                case (digit)
                        0: begin
                                displayBits = 8'b11000000;
                        end
                        1: begin
                                displayBits = 8'b11111001;
                        end
                        2: begin
                                displayBits = 8'b10100100;
                        end
                        3: begin
                                displayBits = 8'b10110000;
                        end
                        4: begin
                                displayBits = 8'b10011001;
                        end
                        5: begin
                                displayBits = 8'b10010010;
                        end
                        6: begin
                                displayBits = 8'b10000010;
                        end
                        7: begin
                                displayBits = 8'b10000111;
                        end
                        8: begin
                                displayBits = 8'b10000000;
                        end
                        9: begin
                                displayBits = 8'b10011000;
                        end
                        default: begin
                                displayBits = 8'b10111111;

                        end
                endcase
        end

endmodule
