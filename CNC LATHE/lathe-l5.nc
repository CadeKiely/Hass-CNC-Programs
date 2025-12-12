%

O58212 
(L8-Ex1 Lathe part)

N5 G18 G40 G54 G80 G99                (SAFE START BLOCK LATHE)

N10 G50 S1600                         (SPINDLE SPEED LIMIT)
N15 G00 T101                          (TOOL 1 OFFSET 1)
N20 G96 S1000 M03                     (CONSTANT SURFACE SPEED ON, SPINDLE ON CW)
N25 G00 X2.0 Z0.1                     (RAPID TO START POSITION)
N30 M08

G00 X2.000
G71 P46 Q55 U0.005 W0 D0.025 F0.01    (ROUGHING CYCLE)

N46 G00 X1.55 Z0.10                   (STOCK SIZE)
N47 G01 Z0.0                          (PART FACE)
N48 G01 X0.500                        (.500 DIAMETER)
N49 G01 Z-0.375                       
N50 G01 X0.875                        (.875 DIAMETER)
N51 G01 Z-.8750                       
N52 G01 X1.000 Z-1.500
N53 G01 Z-1.750 
N54 G01 X1.45                         (1.45 FINAL DIAMETER)
N55 G01 Z-2.00                        (2.00 FINAL LENGTH)

(1/32X45 CHAMFER)
G00 X1.55
Z0.05
X.4687
G01 Z0.
U.1 W-.1

G00 X2.000

G50 S2000
G96 S1600 M03

G70 P46 Q55 U0.001 W0 D0.0005 F0.0002  (FINISHING CYCLE)

G00 X2.

(ENDPROGRAM)
N2050 G00 X3.0 Z4.0                   (RETRACTTOSAFEPOSITION)
N2100 M09                             (COOLANTOFF)
N2150 G97                             (CANCELCONSTANTSURFACE SPEED)
N2200 M05                             (SPINDLEOFF)
N2250 G00 G53 X0 Z0                   (RETURNTOMACHINEHOME)
N2300 M30                             (PROGRAMEND)

%