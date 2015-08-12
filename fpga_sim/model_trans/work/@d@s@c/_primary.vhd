library verilog;
use verilog.vl_types.all;
entity DSC is
    port(
        LCLK            : in     vl_logic;
        Row             : in     vl_logic_vector(9 downto 0);
        Column          : in     vl_logic_vector(9 downto 0);
        SRAM_Addr       : out    vl_logic_vector(18 downto 0);
        Inter_Ratio1    : out    vl_logic_vector(7 downto 0);
        Inter_Ratio2    : out    vl_logic_vector(7 downto 0);
        DeadZone        : in     vl_logic_vector(7 downto 0);
        IN_Region       : out    vl_logic;
        Real_X          : out    vl_logic_vector(17 downto 0);
        Real_Y          : out    vl_logic_vector(14 downto 0);
        DSC_ANGLE       : in     vl_logic_vector(15 downto 0)
    );
end DSC;
