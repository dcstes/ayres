| sketch a b c d e f A B C D |
sketch _ DrGeoSketch new.
sketch text:'complete 4-point in space' at:(-4@4).
sketch text:'4 points   3lines/point   3planes/point' at:(-4@3).
sketch text:' 2 points/line    6 lines 2planes/line' at:(-4@2).
sketch text:' 3 points/plane    3 lines/plane 4 planes' at:(-4@1).
A _ sketch point:(0@1).
A cross.A name:'A'.
B _ sketch point:(-2@-3).
B cross.B name:'B'.
C _​ sketch point:(2@-3).
C cross.C name:'C'.
D _​ sketch point:(0@-2).
D cross.D name:'D'.
a _ sketch line:A to:C.
b _ sketch line:C to:B.
c _ sketch line:C to:D.
d _​ sketch line:D to:B.
e _​ sketch line:A to:B.
f _​ sketch line:A to:D.
