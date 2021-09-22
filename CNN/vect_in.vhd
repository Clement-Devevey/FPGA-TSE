library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use work.pack_types.all;

entity vect_cnn is
 port (
d0, d1, d2 : in neufBits;
c0, c1, c2 : in neufBits;
res : out vingtBits);
end vect_cnn;

architecture arch of vect_cnn is
	-- Fonction qui additionne a b et c --
    function add(a,b,c : dixHuitBits) return vingtBits is
        variable d : vingtBits;
    begin
        return resize(a, res'length) + b + c;
    end function;

	-- Fonction qui multiplie a par b --
    function mult(a,b : neufBits) return dixHuitBits is
        variable c : dixHuitBits;
    begin
        return a*b;
    end function;

	-- Fonction qui utilise l'addition et la multiplication pour réaliser la convolution --
    function conv(a,b,c,d,e,f : neufBits) return vingtBits is
        variable g : vingtBits;
    begin
        return add(mult(a,d), mult(b,e), mult(c,f));
    end function;

begin
	res <= conv(d0,d1,d2, c0,c1,c2);
end arch; 