library ieee;
use ieee.std_logic_1164.all;

entity 2to1mux is
    port ( A: in STD_LOGIC;
           B: in STD_LOGIC;
           S: in STD_LOGIC;
           Y: out STD_LOGIC);
    end 2to1mux

architecture gates of 2to1mux is
    -- dataflow model
    Y <= ( (not S) and A ) or (S and B );