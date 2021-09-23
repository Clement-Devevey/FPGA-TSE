vcom -93 pack_types.vhd 
vcom -93 integer_conv_in.vhd

vsim -gui work.integer_conv_in
force -freeze sim:/integer_conv_in/d0 5 0
force -freeze sim:/integer_conv_in/d1 4 0
force -freeze sim:/integer_conv_in/d2 1 0

force -freeze sim:/integer_conv_in/c0 1 0
force -freeze sim:/integer_conv_in/c1 1 0
force -freeze sim:/integer_conv_in/c2 1 0

add wave -label entree_1 /integer_conv_in/d0
add wave -label coefficient_1 /integer_conv_in/c0
add wave -label entree_2 /integer_conv_in/d1
add wave -label coefficient_2 /integer_conv_in/c1
add wave -label entree_3 /integer_conv_in/d2
add wave -label coefficient_3 /integer_conv_in/c2
add wave -label resultat /integer_conv_in/res
view wave

run

force -freeze sim:/integer_conv_in/d0 55 0
force -freeze sim:/integer_conv_in/d1 0 0
force -freeze sim:/integer_conv_in/d2 1 0

run

force -freeze sim:/integer_conv_in/d0 4 0
force -freeze sim:/integer_conv_in/d1 7 0
force -freeze sim:/integer_conv_in/d2 10 0

force -freeze sim:/integer_conv_in/c0 10 0
force -freeze sim:/integer_conv_in/c1 2 0
force -freeze sim:/integer_conv_in/c2 100 0

run

force -freeze sim:/integer_conv_in/d0 14 0
force -freeze sim:/integer_conv_in/d1 0 0
force -freeze sim:/integer_conv_in/d2 5 0

run

radix decimal

echo (entree_1 * coefficient_1) + (entree_2 * coefficient_2) + (entree_3 * coefficient_3) = resultat