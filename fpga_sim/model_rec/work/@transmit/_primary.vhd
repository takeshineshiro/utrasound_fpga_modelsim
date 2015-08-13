library verilog;
use verilog.vl_types.all;
entity Transmit is
    port(
        Transmit_CLK    : in     vl_logic;
        Line_Num        : in     vl_logic_vector(7 downto 0);
        Focus_Num       : in     vl_logic_vector(1 downto 0);
        Pr_Gate         : in     vl_logic;
        RX_Gate         : in     vl_logic;
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
end Transmit;
