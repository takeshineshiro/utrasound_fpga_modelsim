library verilog;
use verilog.vl_types.all;
entity IMG_BUFFER is
    port(
        data            : in     vl_logic_vector(7 downto 0);
        rdaddress       : in     vl_logic_vector(10 downto 0);
        rdclock         : in     vl_logic;
        wraddress       : in     vl_logic_vector(10 downto 0);
        wrclock         : in     vl_logic;
        wren            : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end IMG_BUFFER;
