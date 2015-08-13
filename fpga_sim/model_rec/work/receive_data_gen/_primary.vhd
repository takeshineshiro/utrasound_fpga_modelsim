library verilog;
use verilog.vl_types.all;
entity receive_data_gen is
    port(
        clk_50M         : in     vl_logic;
        clk_100M        : in     vl_logic;
        reset_n         : in     vl_logic;
        Data_A          : out    vl_logic_vector(11 downto 0);
        Data_B          : out    vl_logic_vector(11 downto 0);
        Data_C          : out    vl_logic_vector(11 downto 0);
        Data_D          : out    vl_logic_vector(11 downto 0);
        Data_E          : out    vl_logic_vector(11 downto 0);
        Data_F          : out    vl_logic_vector(11 downto 0);
        Data_G          : out    vl_logic_vector(11 downto 0);
        Data_H          : out    vl_logic_vector(11 downto 0);
        Line_Num        : out    vl_logic_vector(7 downto 0);
        Focus_Num       : out    vl_logic_vector(1 downto 0);
        Pr_Gate         : out    vl_logic;
        RX_Gate         : out    vl_logic;
        Sample_Gate     : out    vl_logic;
        End_Gate        : out    vl_logic
    );
end receive_data_gen;
