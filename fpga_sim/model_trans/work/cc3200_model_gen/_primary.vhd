library verilog;
use verilog.vl_types.all;
entity cc3200_model_gen is
    port(
        clk_in          : in     vl_logic;
        reset_n         : in     vl_logic
    );
end cc3200_model_gen;
