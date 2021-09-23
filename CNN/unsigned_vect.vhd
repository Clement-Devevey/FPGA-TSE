library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use work.coeffs.all;
use work.pack_types.all;

entity vect_cnn is
 port (
d0, d1, d2 : in unsignedNeufBits;
res : out unsignedVingtBits);
end vect_cnn;

architecture arch of vect_cnn is
    -- Fonction qui additionne a b et c --
    function add(a,b,c : unsignedDixHuitBits) return unsignedVingtBits is
        variable d : unsignedVingtBits;
    begin
        return resize(a, res'length) + b + c;
    end function;

    -- Fonction qui multiplie a par b --
    function mult(a,b : unsignedNeufBits) return unsignedDixHuitBits is
        variable c : unsignedDixHuitBits;
    begin
        return a*b;
    end function;

    -- Fonction qui utilise l'addition et la multiplication pour rÃ©aliser la convolution --
    function conv(a,b,c : unsignedNeufBits) return unsignedVingtBits is
        variable d : unsignedVingtBits;
    begin
        return add(mult(a,vect_c0), mult(b,vect_c1), mult(c,vect_c2));
    end function;

begin
    res <= conv(d0,d1,d2);
end arch; 
