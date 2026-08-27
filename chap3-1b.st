| sketch a b c d A B C D E F G H x y z|
sketch _ DrGeoSketch new.
sketch text:'complete quadrilateral' at:(-2@4).
sketch text:'6 points   2lines/point' at:(-2@3).
sketch text:' 3points/line    4 lines' at:(-2@2).
sketch text:'diagonal triangle XYZ' at:(-2@1).
A _ sketch point:(-1@-1).
A cross.
B _ sketch point:(2@-3).
B cross.
C _​ sketch point:(2@-1).
C cross.
D _​ sketch point:(-1@-3).
D cross.
E _​ sketch point:(-1@-1).
E cross.
F _​ sketch point:(3@0).
F cross.
G _​ sketch point:(-2@-3).
G cross.
H _​ sketch point:(2@-4).
H cross.
a _ sketch line:A to:B.a name:'a'.
b _ sketch line:C to:D.b name:'b'.
c _ sketch line:F to:E.c name:'c'.
d _ sketch line:G to:H.d name:'d'.
A _ sketch intersectionOf:a and:b.
B _ sketch intersectionOf:a and:c.
C _ sketch intersectionOf:a and:d.
D _ sketch intersectionOf:b and:c.
E _ sketch intersectionOf:b and:d.
F _ sketch intersectionOf:c and:d.
x _ (sketch line:A to:F) color:Color green.
y _ (sketch line:B to:E) color:Color green.
z _ (sketch line:C to:D) color:Color green.
(sketch intersectionOf:x and:y) color:Color green.
(sketch intersectionOf:x and:z) color:Color green..
(sketch intersectionOf:y and:z) color:Color green..
