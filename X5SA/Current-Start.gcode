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
G92 Z15.8 ; Set Z Offset
G0 Z0 ; 0 The Z axis
G0 Z5 ; Raise the Z axis to avoid bed
G0 X0 Y0 ; Return Home without running Home
G0 X10 Y10 ; Move to over bed position
M190 S{material_bed_temperature_layer_0} ; Set bed temp and wait
M109 S{material_print_temperature_layer_0} T0 ; Set nozzle temp and wait
G1 Z2.0 F3000 ; Move Z Axis down a little
G1 X10 Y30 Z0 F5000.0 ; Move to start position
G1 X10 Y300.0 Z0 F1500.0 E15 ; Draw the first line
G1 X10.5 Y300.0 Z0 F5000.0 ; Move to side a little
G1 X10.5 Y30 Z0 F1500.0 E30 ; Draw the second line
G1 E-8 F3000 ; Retract 8mm of filament
G92 E0 ; Set Extruder 0
