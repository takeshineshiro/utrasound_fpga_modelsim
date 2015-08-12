library verilog;
use verilog.vl_types.all;
entity ComWithCC3200 is
    port(
        CC3200_SPI_CLK  : in     vl_logic;
        CC3200_SPI_CS   : in     vl_logic;
        CC3200_SPI_DIN  : out    vl_logic;
        CC3200_SPI_DOUT : in     vl_logic;
        Envelop         : in     vl_logic;
        Line_Num        : out    vl_logic_vector(7 downto 0);
        Enable          : out    vl_logic;
        Zoom            : out    vl_logic_vector(1 downto 0);
        Gain            : out    vl_logic_vector(5 downto 0);
        Trans_Data      : in     vl_logic_vector(7 downto 0);
        Trans_Addr      : out    vl_logic_vector(8 downto 0)
    );
end ComWithCC3200;
