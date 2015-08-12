library verilog;
use verilog.vl_types.all;
entity Coherent_Coff is
    port(
        clk             : in     vl_logic;
        Data_A          : in     vl_logic_vector(11 downto 0);
        Data_B          : in     vl_logic_vector(11 downto 0);
        Data_C          : in     vl_logic_vector(11 downto 0);
        Data_D          : in     vl_logic_vector(11 downto 0);
        Data_E          : in     vl_logic_vector(11 downto 0);
        Data_F          : in     vl_logic_vector(11 downto 0);
        Data_G          : in     vl_logic_vector(11 downto 0);
        Data_H          : in     vl_logic_vector(11 downto 0);
        Coff            : out    vl_logic_vector(7 downto 0)
    );
end Coherent_Coff;
