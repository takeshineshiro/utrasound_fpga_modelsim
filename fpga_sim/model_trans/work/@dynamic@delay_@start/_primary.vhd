library verilog;
use verilog.vl_types.all;
entity DynamicDelay_Start is
    port(
        address         : in     vl_logic_vector(0 downto 0);
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(127 downto 0)
    );
end DynamicDelay_Start;
