; X5SA Start Code
M2100 T901
G21 ; Set units to millimeters
G90 ; Set all axis to Absolute
M82 ; Set extrusion to Absolute
M107 ; Disable all fans
G28 ; Autohome
M420 S ; Turn bed leveling back on
G29 P3 ; Autolevel for a 3x3 matrix
G1 X165 Y165 ; Move nozzle to Center
G92 Z15.9 ; Set Z Offset
G0 Z0 ; 0 The Z axis
M190 S{material_bed_temperature_layer_0} ; Set bed temp and wait
M109 S{material_print_temperature_layer_0} T0 ; Set nozzle temp and wait
G92 E0 ; Set Extruder 0
