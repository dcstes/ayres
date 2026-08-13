| sketch p P Q a a2 A b b2 B c c2 c3 C C2 d d2 D e e2 e3 e4 E E2 E3 p1 p2 |
sketch \ DrGeoSketch new.
P \ sketch point:0@4.
sketch text:'B(b,b2,c3,p) =^c2 P(b,a,d,c)' at:-3@3.
P cross.P name:'P'.
A \ sketch point:(-3@0).
A cross.
a \ sketch line:A to:P.
a name:'a'.
B \ sketch point:(-2@0).
B cross.
b \ sketch line:B to:P.
b name:'b'.
C \ sketch point:(0@-2).
C cross.
c \ sketch line:C to:P.
c name:'c'.
D \ sketch point:(2@-2).
D cross.
d \ sketch line:D to:P.
d name:'d'.
p1 \ sketch point:(-2@-3).
p1 cross.
p2 \ sketch point:(2@-3).
p2 cross.
p \ sketch line:p1 to:p2.
p name:'p'.
A \ sketch intersectionOf:p and:a.
B \ sketch intersectionOf:p and:b.
C \ sketch intersectionOf:p and:c.
D \ sketch intersectionOf:p and:d.
A name:'A'.
B name:'B'.
C name:'C'.
D name:'D'.
Q \ sketch point:(-3@3).
Q cross.
b2 \ sketch line:Q to:B.
Q \ sketch intersectionOf:a and:b2.
Q name:'Q'.
c2 \ sketch line:Q to:C.
c2 name:'c2'.
d2 \ sketch line:Q to:D.
C2 \ sketch intersectionOf:c2 and:d.
C2 name:'C2'.
c3 \ sketch line:C2 to:B.
c3 name:'c3'.
E \ sketch point:(1@-2).
E cross.
e \ (sketch line:E to:P) color:Color green.
e name:'e'.
E \ (sketch intersectionOf:e and:p) color:Color green.
E name:'E'.
e2 \ (sketch line:E to:Q) color:Color green.
E2 \ (sketch intersectionOf:e2 and:d) color:Color green.
e3 \ (sketch line:E2 to:B) color:Color green.
E3 \ (sketch intersectionOf:e3 and:c2) color:Color green.
e4 \ (sketch line:E3 to:P) color:Color green.
