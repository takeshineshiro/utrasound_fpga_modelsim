library verilog;
use verilog.vl_types.all;
entity cc3200_test_model is
    port(
        clk_in          : in     vl_logic;
        reset_n         : in     vl_logic;
        RX_Gate         : in     vl_logic;
        Envelop         : in     vl_logic;
        line_num        : out    vl_logic_vector(7 downto 0);
        focus_num       : out    vl_logic_vector(1 downto 0)
    );
end cc3200_test_model;
