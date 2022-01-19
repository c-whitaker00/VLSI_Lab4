library ieee;
use ieee.std_logic_1164.all;

entity tb_light_controller is
end tb_light_controller;

architecture archi of tb_light_controller is

    component light_controller 
    port(
         clk: in std_logic;
         sa, sb : in std_logic;
         ga, rb, ya, ra, gb, yb : out std_logic);
    end component;

    signal clk : std_logic := '0';
    signal sa : std_logic := '1';
    signal sb : std_logic := '0';
    
    signal ga : std_logic;
    signal rb : std_logic;
    signal ya : std_logic;
    signal ra : std_logic;
    signal gb : std_logic;
    signal yb : std_logic;
    constant clock_period : time := 10 s;

begin

    uut: light_controller port map (
             clk => clk,
             sa => sa,
             sb => sb,
             ga => ga,
             rb => rb,
             ya => ya,
             ra => ra,
             gb => gb,
             yb => yb
         );
    clock_process
    begin
    clk <= '0';
    wait for clock_period/2;
    clk <= '1';
    wait for clock_period/2;
    end process;

    stim_proc: process 
    begin
    sa <= '1';
    wait for 60 s;
    sb <= '1';
    sa <= '0';
    wait for 70 s;
    sa <= '1';
    sb <= '0';
    wait;
    end process;
end;

    













