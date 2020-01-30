module econV0_tb;

// Signals
reg clk;
reg reset;

reg [863:0] input_data;
reg input_valid;
wire input_ready;

wire [53:0] output_data;
wire output_valid;
reg output_ready;

wire [15:0] size_in_data;
wire size_in_valid;

wire [15:0] size_out_data;
wire size_out_ready;

reg [53:0] expected_output_data;
reg dut_error;

// Module instance
econV0 econV0_top (
    .clk (clk),
    .rst (reset),

    .input_48_rsc_dat (input_data), // IN
    .input_48_rsc_vld (input_valid), // IN
    .input_48_rsc_rdy (input_ready), // OUT

    .layer7_out_rsc_dat (output_data), // OUT
    .layer7_out_rsc_vld (output_valid), // OUT
    .layer7_out_rsc_rdy (output_ready), // IN

    .const_size_in_1_rsc_dat(size_in_data), // OUT
    .const_size_in_1_rsc_vld(size_in_valid), // OUT

    .const_size_out_1_rsc_dat(size_out_data), // OUT
    .const_size_out_1_rsc_vld(size_out_valid) // OUT
);

// Trace file setup.
initial
begin
    $dumpfile ("econV0.vcd");
    $dumpvars;
end


// Clock generator.
initial
begin
    clk = 0;
    forever
        #5 clk = ~ clk;
end

// Initialize signals
initial
begin
    $display ("@%04d INFO: ###################################################", $time);

    input_data = 864'b0;
    output_ready = 1'b0;

    // Assert input data as valid.
    input_valid = 1'b1;

    // Assert output data as ready.
    output_ready = 1'b1;

    expected_output_data = 54'b0;

    dut_error = 0;
end

// Reset generator.
initial
begin
    reset = 1;
    $display ("@%04d INFO: Reset high", $time);
    
    #50 reset = 0;
    $display ("@%04d INFO: Reset low", $time);
end

// Stimuli.
initial begin
    // TODO: In the future the testbench will read from file the inputs and
    // expected outputs.
    
    // 0
    input_data = 863'b0; 
    expected_output_data = 54'b000000000000000000000000010101111011000000111010001111;
  
end

// Validation
always @(posedge clk)
begin
    if (reset == 1'b1)
        dut_error <= 0;
    else
        if (output_valid == 1'b1 && output_data != expected_output_data)
        begin
            $display ("@%04d ERROR: DUT ERROR!", $time);
            $display ("@%04d ERROR: Expected value %b, but got value %b", $time, expected_output_data, output_data);
            dut_error <= 1;
        end
end

initial
begin
    forever
    begin
        #10;
        if (reset == 1'b0)
            if (output_valid == 1'b1)
            begin
                $display ("@%04d INFO: Terminating simulation", $time);
                if (dut_error == 0) begin
                    $display ("@%04d INFO: Validation: PASSED", $time);
                end
                else begin
                    $display ("@%04d INFO: Validation: FAIL", $time);
                end
                $display ("@%04d INFO: ###################################################", $time);

                #10;
                //$stop;
                $finish;
            end                
    end
end

endmodule

