library verilog;
use verilog.vl_types.all;
entity Test_Line is
    port(
        address         : in     vl_logic_vector(0 downto 0);
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end Test_Line;
