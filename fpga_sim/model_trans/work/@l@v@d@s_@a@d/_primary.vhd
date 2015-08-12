library verilog;
use verilog.vl_types.all;
entity LVDS_AD is
    port(
        rx_in           : in     vl_logic_vector(7 downto 0);
        rx_inclock      : in     vl_logic;
        rx_locked       : out    vl_logic;
        rx_out          : out    vl_logic_vector(95 downto 0);
        rx_outclock     : out    vl_logic
    );
end LVDS_AD;
