library verilog;
use verilog.vl_types.all;
entity matchfilter_st is
    generic(
        DATA_WIDTH      : integer := 15;
        COEF_WIDTH      : integer := 12;
        ACCUM_WIDTH     : integer := 30
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        data_in         : in     vl_logic_vector;
        clk_en          : in     vl_logic;
        rdy_to_ld       : out    vl_logic;
        done            : out    vl_logic;
        fir_result      : out    vl_logic_vector
    );
end matchfilter_st;
