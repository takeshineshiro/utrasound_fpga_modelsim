library verilog;
use verilog.vl_types.all;
entity data_gen_submodule is
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        Data_A          : out    vl_logic_vector(11 downto 0);
        Data_B          : out    vl_logic_vector(11 downto 0);
        Data_C          : out    vl_logic_vector(11 downto 0);
        Data_D          : out    vl_logic_vector(11 downto 0);
        Data_E          : out    vl_logic_vector(11 downto 0);
        Data_F          : out    vl_logic_vector(11 downto 0);
        Data_G          : out    vl_logic_vector(11 downto 0);
        Data_H          : out    vl_logic_vector(11 downto 0)
    );
end data_gen_submodule;
