library verilog;
use verilog.vl_types.all;
entity receive_top_module is
    port(
        clk_50M         : in     vl_logic;
        clk_100M        : in     vl_logic;
        reset_n         : in     vl_logic;
        Trans_Data      : out    vl_logic_vector(7 downto 0)
    );
end receive_top_module;
