library verilog;
use verilog.vl_types.all;
entity EmitOneCH is
    port(
        Transmit_CLK    : in     vl_logic;
        RX_Gate         : in     vl_logic;
        EmitDelay       : in     vl_logic_vector(7 downto 0);
        Emit_Width      : in     vl_logic_vector(5 downto 0);
        TXP             : out    vl_logic;
        TXN             : out    vl_logic
    );
end EmitOneCH;
