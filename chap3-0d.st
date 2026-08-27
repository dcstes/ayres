| sketch a b f A B C D E F G H I|
sketch _ DrGeoSketch new.
sketch text:'complete 3-line' at:(-2@4).
sketch text:'3 points   2lines/point' at:(-2@3).
sketch text:' 2points/line    3 lines' at:(-2@2).
A _ sketch point:(-1@-1).
A cross.
B _ sketch point:(1@-3).
B cross.
C _​ sketch point:(-1@-3).
C cross.
D _​ sketch point:(1@-1).
D cross.
a _ sketch line:A to:B.
b _ sketch line:C to:D.
E _ sketch intersectionOf:a and:b.
F _​ sketch point:(-1@1).
F cross.
G _​ sketch point:(2@1).
G cross.
f _ sketch line:F to:G.
H _ sketch intersectionOf:f and:a.
I _ sketch intersectionOf:f and:b.