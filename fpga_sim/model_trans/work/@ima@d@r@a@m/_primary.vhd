library verilog;
use verilog.vl_types.all;
entity ImaDRAM is
    port(
        data            : in     vl_logic_vector(7 downto 0);
        inclock         : in     vl_logic;
        outclock        : in     vl_logic;
        rdaddress       : in     vl_logic_vector(13 downto 0);
        wraddress       : in     vl_logic_vector(13 downto 0);
        wren            : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end ImaDRAM;
