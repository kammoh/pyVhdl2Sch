-- This testBench was generated by pyVhdl2Sch --
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;


-- entity declaration
tb_InputGate IS
END tb_InputGate;

ARCHITECTURE behavior OF tb_InputGate IS
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT InputGate
PORT (
    Clk : IN STD_LOGIC;
    PxClk : IN STD_LOGIC;
    PxVal : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(5 downto 0);
    b : IN STD_LOGIC_VECTOR(5 downto 0);
    c : IN STD_LOGIC_VECTOR(5 downto 0);
    d : IN STD_LOGIC_VECTOR(5 downto 0);
    daInOut!@g : INOUT STD_LOGIC_VECTOR(134 downto 7);
    PxValOut : OUT STD_LOGIC;
    Lig : OUT STD_LOGIC_VECTOR(wSize-1 downto 0);
    Lig32 : OUT STD_LOGIC_VECTOR(wSize-1 downto 3);
    Col : OUT STD_LOGIC_VECTOR(1 to 8);
    StatusInner : OUT STD_LOGIC;
    FirstPass : OUT STD_LOGIC
);
END COMPONENT;
-- declare inputs and initialize them
    signal Clk : STD_LOGIC;
    signal PxClk : STD_LOGIC;
    signal PxVal : STD_LOGIC;
    signal a : STD_LOGIC_VECTOR(5 downto 0);
    signal b : STD_LOGIC_VECTOR(5 downto 0);
    signal c : STD_LOGIC_VECTOR(5 downto 0);
    signal d : STD_LOGIC_VECTOR(5 downto 0);
-- declare inouts and initialize them
    signal daInOut!@g : STD_LOGIC_VECTOR(134 downto 7);
-- declare outputs and initialize them
    signal PxValOut : STD_LOGIC;
    signal Lig : STD_LOGIC_VECTOR(wSize-1 downto 0);
    signal Lig32 : STD_LOGIC_VECTOR(wSize-1 downto 3);
    signal Col : STD_LOGIC_VECTOR(1 to 8);
    signal StatusInner : STD_LOGIC;
    signal FirstPass : STD_LOGIC;
constant clk_period : time := 10 ns;

BEGIN
-- Instantiate the Unit Under Test (UUT)
uut: tb_InputGate PORT MAP (
    Clk => Clk;
    PxClk => PxClk;
    PxVal => PxVal;
    a => a;
    b => b;
    c => c;
    d => d;
    daInOut!@g => daInOut!@g;
    PxValOut => PxValOut;
    Lig => Lig;
    Lig32 => Lig32;
    Col => Col;
    StatusInner => StatusInner;
    FirstPass => FirstPass
);
-- Clock process definitions( clock with 50% duty cycle is generated here.)
clk_process :process
begin
    <clk_a_remplacer> <= '0';
    wait for clk_period/2;  --for 0.5 ns signal is '0'.
    <clk_a_remplacer> <= '1';
    wait for clk_period/2;  --for 0.5 ns signal is '1'.
end process;
-- Stimulus process
stim_proc: process
begin
wait for 3*clk_period;
-- Insert your tests
   wait;
end process;
END;