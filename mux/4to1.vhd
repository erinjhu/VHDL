library ieee;
use ieee.std_logic_1164.all;

entity 4to1mux is
    port ( A: in STD_LOGIC;
           B: in STD_LOGIC;
           C: in STD_LOGIC;
           D: in STD_LOGIC;
           S: in STD_LOGIC;
           Y: out STD_LOGIC);
    end 4to1mux

architecture gates of 2to1mux is

-- COMPONENTS

-- copy the entity of the 2 to 1 mux and make it into a component
component 2to1mux is
    port ( A: in STD_LOGIC;
           B: in STD_LOGIC;
           S: in STD_LOGIC;
           Y: out STD_LOGIC);
end component

-- SIGNALS

-- 4 to 1 mux is made of three 2 to 1 mux
-- t1 and t2 are the output of the first two 2 to 1 mux
signal t1, t2 : STD_LOGIC;

begin

-- port map for each 2 to 1 mux
-- for each port map, follow the structure of the component
-- port map (input A, input B, select, output)
U1: mux1 port map (A, B, S(0), t2);
U2: mux2 port map (C, D, S(0), t1);
U3: mux3 port map (t1, t2, S(1), Y);