library verilog;
use verilog.vl_types.all;
entity Transmit_Delay_ROM is
    port(
        address         : in     vl_logic_vector(2 downto 0);
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(127 downto 0)
    );
end Transmit_Delay_ROM;
