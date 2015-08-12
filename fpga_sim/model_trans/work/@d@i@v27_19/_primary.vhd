library verilog;
use verilog.vl_types.all;
entity DIV27_19 is
    port(
        clock           : in     vl_logic;
        denom           : in     vl_logic_vector(34 downto 0);
        numer           : in     vl_logic_vector(42 downto 0);
        quotient        : out    vl_logic_vector(42 downto 0);
        remain          : out    vl_logic_vector(34 downto 0)
    );
end DIV27_19;
