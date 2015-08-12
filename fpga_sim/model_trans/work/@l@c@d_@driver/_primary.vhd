library verilog;
use verilog.vl_types.all;
entity LCD_Driver is
    generic(
        WAKEUP          : integer := 515
    );
    port(
        LCLK            : in     vl_logic;
        RST_n           : in     vl_logic;
        HS              : out    vl_logic;
        VS              : out    vl_logic;
        DE              : out    vl_logic;
        Column          : out    vl_logic_vector(9 downto 0);
        Row             : out    vl_logic_vector(9 downto 0);
        SPENA           : out    vl_logic;
        SPDA_OUT        : out    vl_logic;
        SPDA_IN         : in     vl_logic;
        WrEn            : out    vl_logic;
        SPCK            : out    vl_logic;
        Brightness      : in     vl_logic_vector(7 downto 0);
        Contrast        : in     vl_logic_vector(7 downto 0)
    );
end LCD_Driver;
