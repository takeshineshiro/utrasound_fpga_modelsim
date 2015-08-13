library verilog;
use verilog.vl_types.all;
entity cmd_gen_submodule is
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        Line_Num        : out    vl_logic_vector(7 downto 0);
        Focus_Num       : out    vl_logic_vector(1 downto 0);
        Pr_Gate         : out    vl_logic;
        RX_Gate         : out    vl_logic;
        Sample_Gate     : out    vl_logic;
        Envelop         : out    vl_logic;
        End_Gate        : out    vl_logic
    );
end cmd_gen_submodule;
