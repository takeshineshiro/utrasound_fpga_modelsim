library verilog;
use verilog.vl_types.all;
entity AD9273_SPI_Config is
    generic(
        CHIP_PORT_CONFIG: integer := 24;
        CHIP_ID         : integer := 47;
        CHIP_GRADE      : integer := 16;
        DEVICE_INDEX2   : integer := 15;
        DEVICE_INDEX1   : integer := 15;
        DEVICE_UPDATE_EN: integer := 1;
        DEVICE_UPDATE_DIS: integer := 0;
        Modes           : integer := 0;
        Clock           : integer := 1;
        TEST_IO         : integer := 0;
        FLEX_CHANNEL_INPUT: integer := 14;
        FLEX_OFFSET     : integer := 32;
        FLEX_GAIN       : integer := 14;
        BIAS_CURRENT    : integer := 8;
        OUTPUT_MODE     : integer := 0;
        OUTPUT_ADJUST   : integer := 49;
        OUTPUT_PHASE    : integer := 3;
        FLEX_VREF       : integer := 0;
        USER_PATT1_LSB  : integer := 0;
        USER_PATT1_MSB  : integer := 0;
        USER_PATT2_LSB  : integer := 0;
        USER_PATT2_MSB  : integer := 0;
        SERIAL_CONTROL  : integer := 0;
        SERIAL_CH_STAT  : integer := 0;
        FLEX_FILTER     : integer := 0;
        ANALOG_INPUT    : integer := 1;
        CROSS_POINT_SWITCH: integer := 0;
        DELAY_A         : integer := 3;
        DELAY_B         : integer := 3;
        DELAY_C         : integer := 3;
        DELAY_D         : integer := 3;
        DELAY_E         : integer := 3;
        DELAY_F         : integer := 3;
        DELAY_G         : integer := 3;
        DELAY_H         : integer := 3;
        SPI_PR          : integer := 0;
        SPI_REQ         : integer := 1;
        SPI_WAIT        : integer := 2;
        SPI_END         : integer := 3
    );
    port(
        RST_n           : in     vl_logic;
        SPI_CLK         : in     vl_logic;
        SPI_Data        : inout  vl_logic;
        SPI_CS          : out    vl_logic
    );
end AD9273_SPI_Config;
