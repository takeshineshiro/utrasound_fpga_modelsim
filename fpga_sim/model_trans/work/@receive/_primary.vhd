library verilog;
use verilog.vl_types.all;
entity Receive is
    --generic(
      --W_OUTSIDE       : integer type with unrepresentable value!
    --);
    port(
        AD_CLK          : in     vl_logic;
        Data_A          : in     vl_logic_vector(11 downto 0);
        Data_B          : in     vl_logic_vector(11 downto 0);
        Data_C          : in     vl_logic_vector(11 downto 0);
        Data_D          : in     vl_logic_vector(11 downto 0);
        Data_E          : in     vl_logic_vector(11 downto 0);
        Data_F          : in     vl_logic_vector(11 downto 0);
        Data_G          : in     vl_logic_vector(11 downto 0);
        Data_H          : in     vl_logic_vector(11 downto 0);
        Line_Num        : in     vl_logic_vector(7 downto 0);
        Focus_Num       : in     vl_logic_vector(1 downto 0);
        Pr_Gate         : in     vl_logic;
        RX_Gate         : in     vl_logic;
        Sample_Gate     : in     vl_logic;
        End_Gate        : in     vl_logic;
        So_Gate         : out    vl_logic;
        DAS_Value       : out    vl_logic_vector(14 downto 0);
        Coheren_Coff    : out    vl_logic_vector(7 downto 0)
    );
end Receive;
