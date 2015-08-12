library verilog;
use verilog.vl_types.all;
entity IMG_TRI_BUFFER is
    port(
        data            : in     vl_logic_vector(7 downto 0);
        rdaddress_a     : in     vl_logic_vector(10 downto 0);
        rdaddress_b     : in     vl_logic_vector(10 downto 0);
        rdclock         : in     vl_logic;
        wraddress       : in     vl_logic_vector(10 downto 0);
        wrclock         : in     vl_logic;
        wren            : in     vl_logic;
        qa              : out    vl_logic_vector(7 downto 0);
        qb              : out    vl_logic_vector(7 downto 0)
    );
end IMG_TRI_BUFFER;
