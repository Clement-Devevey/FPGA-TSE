vcom -93 pack_types.vhd 
vcom -93 integer_conv.vhd

vsim -gui work.integer_conv
force -freeze sim:/integer_conv/d0 5 0
force -freeze sim:/integer_conv/d1 4 0
force -freeze sim:/integer_conv/d2 1 0

add wave -label entree_1 /integer_conv/d0
add wave -label coefficient_1 /coeffs/c0_integer
add wave -label entree_2 /integer_conv/d1
add wave -label coefficient_2 /coeffs/c1_integer
add wave -label entree_3 /integer_conv/d2
add wave -label coefficient_3 /coeffs/c2_integer
add wave -label resultat /integer_conv/res
view wave

run

force -freeze sim:/integer_conv/d0 55 0
force -freeze sim:/integer_conv/d1 0 0
force -freeze sim:/integer_conv/d2 1 0

run

force -freeze sim:/integer_conv/d0 4 0
force -freeze sim:/integer_conv/d1 7 0
force -freeze sim:/integer_conv/d2 10 0

run

force -freeze sim:/integer_conv/d0 14 0
force -freeze sim:/integer_conv/d1 0 0
force -freeze sim:/integer_conv/d2 5 0

run

radix decimal

echo (entree_1 * coefficient_1) + (entree_2 * coefficient_2) + (entree_3 * coefficient_3) = resultat