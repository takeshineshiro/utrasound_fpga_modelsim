library verilog;
use verilog.vl_types.all;
entity transmit_test_entity is
    port(
        clk_in          : in     vl_logic;
        reset_n         : in     vl_logic;
        Sample_Gate     : out    vl_logic;
        P               : out    vl_logic_vector(15 downto 0);
        N               : out    vl_logic_vector(15 downto 0);
        HV_SW_CLR       : out    vl_logic;
        HV_SW_LE        : out    vl_logic;
        HV_SW_CLK       : out    vl_logic;
        HV_SW_DOUT      : out    vl_logic;
        AX              : out    vl_logic_vector(3 downto 0);
        AY              : out    vl_logic_vector(2 downto 0);
        MT_CS           : out    vl_logic;
        MT_Strobe       : out    vl_logic;
        MT_Data         : out    vl_logic
    );
end transmit_test_entity;
