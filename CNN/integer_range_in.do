vcom -93 pack_types.vhd
vcom -93 integer_range.vhd

vsim -gui work.cnn_integer_range_in
force -freeze sim:/cnn_integer_range_in/d0 2 0
force -freeze sim:/cnn_integer_range_in/d1 2 0
force -freeze sim:/cnn_integer_range_in/d2 2 0
force -freeze sim:/cnn_integer_range_in/c0 2 0
force -freeze sim:/cnn_integer_range_in/c1 2 0
force -freeze sim:/cnn_integer_range_in/c2 2 0



add wave -label entree_1 /cnn_integer_range_in/d0
add wave -label coefficient_1 /cnn_integer_range_in/c0
add wave -label entree_2 /cnn_integer_range_in/d1
add wave -label coefficient_2 /cnn_integer_range_in/c1
add wave -label entree_3 /cnn_integer_range_in/d2
add wave -label coefficient_3 /cnn_integer_range_in/c2
add wave -label resultat /cnn_integer_range_in/res
view wave

run

force -freeze sim:/cnn_integer_range_in/d0 10 0
force -freeze sim:/cnn_integer_range_in/d1 20 0
force -freeze sim:/cnn_integer_range_in/d2 30 0
force -freeze sim:/cnn_integer_range_in/c0 2 0
force -freeze sim:/cnn_integer_range_in/c1 2 0
force -freeze sim:/cnn_integer_range_in/c2 2 0

run

force -freeze sim:/cnn_integer_range_in/d0 10 0
force -freeze sim:/cnn_integer_range_in/d1 10 0
force -freeze sim:/cnn_integer_range_in/d2 10 0
force -freeze sim:/cnn_integer_range_in/c0 2 0
force -freeze sim:/cnn_integer_range_in/c1 2 0
force -freeze sim:/cnn_integer_range_in/c2 2 0
run

force -freeze sim:/cnn_integer_range_in/d0 5 0
force -freeze sim:/cnn_integer_range_in/d1 6 0
force -freeze sim:/cnn_integer_range_in/d2 7 0
force -freeze sim:/cnn_integer_range_in/c0 2 0
force -freeze sim:/cnn_integer_range_in/c1 2 0
force -freeze sim:/cnn_integer_range_in/c2 2 0

run

radix -decimal

echo (entree_1 * coefficient_1) + (entree_2 * coefficient_2) + (entree_3 * coefficient_3) = resultat
