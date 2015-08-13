library verilog;
use verilog.vl_types.all;
entity Apod is
    port(
        address         : in     vl_logic_vector(10 downto 0);
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(63 downto 0)
    );
end Apod;
