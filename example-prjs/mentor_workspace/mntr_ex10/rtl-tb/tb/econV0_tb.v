module econV0_tb;

`define TB_INDEX 3

// Signals
reg clk;
reg reset;

reg [863:0] file_input_data[99:0];
reg [53:0] file_output_data[99:0];

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
    $display ("@%04d INFO: Load input from file", $time);
    $readmemb("../tb/tb_input_features.mem", file_input_data);
    $display ("@%04d INFO: Load expected output from file", $time);
    $readmemb("../tb/tb_output_predictions.mem", file_output_data);
   
    $display ("@%04d INFO: Use input: %3d", $time, `TB_INDEX);

    input_data = file_input_data[`TB_INDEX];  
    input_valid = 1'b1;

    expected_output_data = file_output_data[`TB_INDEX];
   
    output_ready = 1'b0;
    output_ready = 1'b1;

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
        
//        if  (output_valid == 1'b1 && output_data == expected_output_data)
//        begin
//            $display ("@%04d INFO: Expected value %b and computed value %b", $time, expected_output_data, output_data);
//        end
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

