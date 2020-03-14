module econV0_tb;

`ifndef TEST_SIZE
`define TEST_SIZE 50
`endif

// Clock and reset.
reg clk;
reg reset;

// Arrays of testvectors.
reg [383:0] file_input_data[49:0];
reg [1727:0] file_w2_data[0:0];
reg [63:0] file_b2_data[0:0];
reg [10239:0] file_w4_data[0:0];
reg [79:0] file_b4_data[0:0];
reg [79:0] file_output_data[49:0];

// Values from testvectors.
reg [383:0] input_data;
reg input_valid;
wire input_ready;
wire input_triosy;

wire [79:0] output_data;
wire output_valid;
reg output_ready;
wire output_triosy;

wire [15:0] size_in_data;
wire size_in_valid;
reg size_in_ready;
wire size_in_triosy;

wire [15:0] size_out_data;
wire size_out_valid;
reg size_out_ready;
wire size_out_triosy;

reg [1727:0] w2_data;
reg w2_valid;
wire w2_ready;
wire w2_triosy;

reg [63:0] b2_data;
reg b2_valid;
wire b2_ready;
wire b2_triosy;

reg [10239:0] w4_data;
reg w4_valid;
wire w4_ready;
wire w4_triosy;

reg [79:0] b4_data;
reg b4_valid;
wire b4_ready;
wire b4_triosy;

// Bookeeping variables.
reg [31:0] vectornum_in, vectornum_ou, errors;
reg [79:0] expected_output_data;
reg dut_error;

// Instantiate DUT.
econ_4x4_d10 econ_4x4_d10_top (
    .clk (clk),
    .rst (reset),

    .input_1_rsc_dat(input_data), // IN
    .input_1_rsc_vld(input_valid), // IN
    .input_1_rsc_rdy(input_ready), // OUT
    .input_1_rsc_triosy_lz(input_triosy), // OUT

    .layer5_out_rsc_dat(output_data), // OUT
    .layer5_out_rsc_vld(output_valid), // OUT
    .layer5_out_rsc_rdy(output_ready), // IN
    .layer5_out_rsc_triosy_lz(output_triosy), // OUT

    .const_size_in_1_rsc_dat(size_in_data), // OUT
    .const_size_in_1_rsc_vld(size_in_valid), // OUT
    .const_size_in_1_rsc_rdy(size_in_ready), // IN
    .const_size_in_1_rsc_triosy_lz(size_in_triosy), // OUT

    .const_size_out_1_rsc_dat(size_out_data), // OUT
    .const_size_out_1_rsc_vld(size_out_valid), // OUT
    .const_size_out_1_rsc_rdy(size_out_ready), // IN
    .const_size_out_1_rsc_triosy_lz(size_out_triosy), // OUT

    .w2_rsc_dat(w2_data), // IN
    .w2_rsc_vld(w2_valid), // IN
    .w2_rsc_rdy(w2_ready), // OUT
    .w2_rsc_triosy_lz(w2_triosy), // OUT

    .b2_rsc_dat(b2_data), // IN
    .b2_rsc_vld(b2_valid), // IN
    .b2_rsc_rdy(b2_ready), // OUT
    .b2_rsc_triosy_lz(b2_triosy), // OUT

    .w4_rsc_dat(w4_data), // IN
    .w4_rsc_vld(w4_valid), // IN
    .w4_rsc_rdy(w4_ready), // OUT
    .w4_rsc_triosy_lz(w4_triosy), // OUT

    .b4_rsc_dat(b4_data), // IN
    .b4_rsc_vld(b4_valid), // IN
    .b4_rsc_rdy(b4_ready), // OUT
    .b4_rsc_triosy_lz(b4_triosy) // OUT
);

// Setup trace file.
initial
begin
    $dumpfile ("econV0.vcd");
    $dumpvars;
end

// Generate clock (25ns clock period).
always
begin
    clk = 0;
    #25;
    clk = 1;
    #25;
end

// Read testvectors from files to arrays and pulse reset.
initial
begin
    $display ("@%04d INFO: ###################################################", $time);

    $display ("@%04d INFO: Load input from file", $time);
    $readmemb("../tb/mem/tb_input_features.mem", file_input_data);

    $display ("@%04d INFO: Load expected output from file", $time);
    $readmemb("../tb/mem/tb_output_predictions.mem", file_output_data);

    $display ("@%04d INFO: Load weights and biases from files", $time);
    $readmemb("../tb/mem/w2.mem", file_w2_data);
    $readmemb("../tb/mem/b2.mem", file_b2_data);
    $readmemb("../tb/mem/w4.mem", file_w4_data);
    $readmemb("../tb/mem/b4.mem", file_b4_data);

    errors = 0;
    vectornum_in = 0;
    vectornum_ou = 0;

    reset = 1;
    $display ("@%04d INFO: Reset high", $time);
    #50;
    reset = 0;
    $display ("@%04d INFO: Reset low", $time);

    $display ("@%04d INFO: Ready to run %d test vectors", $time, `TEST_SIZE);

end


// Apply test vectors.
always @(posedge clk)
begin

    wait (input_ready == 1'b1);

    #1; // Apply inputs with some delay (1ns) after clock.

    input_data = file_input_data[vectornum_in];
    vectornum_in = vectornum_in + 1;
    input_valid = 1'b1;

    w2_data = file_w2_data[0];
    w2_valid = 1'b1;

    b2_data = file_b2_data[0];
    b2_valid = 1'b1;

    w4_data = file_w4_data[0];
    w4_valid = 1'b1;

    b4_data = file_b4_data[0];
    b4_valid = 1'b1;

    output_ready = 1'b1;

    size_in_ready = 1'b1;

    size_out_ready = 1'b1;

    dut_error = 0;
end

// Compare outputs with expected outputs.
always @(posedge clk)
begin
    if (reset == 1'b1)
        dut_error = 0;
    else
    begin

        wait (output_valid == 1'b1);
    
        #1; 

        expected_output_data = file_output_data[vectornum_ou];

        if (output_data != expected_output_data)
        begin
            $display ("@%04d ERROR: DUT ERROR!", $time);
            $display ("@%04d ERROR: Expected value [%04d/%04d] %b", $time, vectornum_ou, `TEST_SIZE, expected_output_data);
            $display ("@%04d ERROR:  but got value             %b", $time, output_data);

            errors = errors + 1;
            dut_error = 1;
        end else
        begin
            $display ("@%04d INFO:  DUT OK!", $time);
            $display ("@%04d INFO:  Expected value [%04d/%04d] %b", $time, vectornum_ou, `TEST_SIZE, expected_output_data);
            $display ("@%04d INFO:   got value                 %b", $time, output_data);

            dut_error = 0;
        end

        vectornum_ou = vectornum_ou + 1;

        if (vectornum_ou == `TEST_SIZE)
        begin
            $display ("@%04d INFO: Terminating simulation", $time);
            $display ("@%04d INFO: Simulated %0d testvectors with %0d errors", $time, vectornum_ou, errors);
            if (errors == 0)
                $display ("@%04d INFO: Validation: PASSED", $time);
            else
                $display ("@%04d INFO: Validation: FAIL", $time);
            $display ("@%04d INFO: ###################################################", $time);
            #5;
            //$stop;
            $finish; // End simulation!
        end

    end
end

endmodule

