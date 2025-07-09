library ieee;
use ieee.std_logic_1164.all;

entity Decod7segmentos is
	port (
		i3, i2, i1, i0: in std_logic;
		a, b, c, d, e, f, g: out std_logic
	);
end Decod7segmentos;

architecture arc of Decod7segmentos is
begin
	a <= not(i3 or i1 or (i1 and i0) or (not(i1) and not(i0)));
	b <= not(not(i2) or (i1 and i0) or (not(i1) and not(i0)));
	c <= not(i2 or not(i1) or i0);
	d <= not(i3 or (not(i2) and not(i0)) or (i1 and not(i2)) or (i1 and not(i0)) or (i2 and not(i1) and i0));
	e <= not((not(i2) and not(i0)) or (i1 and not(i0)));
	f <= not(i3 or (not(i1) and not(i0)) or (not(i1) and i2) or (i2 and not(i0)));
	g <= not(i3 or (i2 and not(i1)) or (not(i2) and i1) or (i2 and not(i0)));
end arc;