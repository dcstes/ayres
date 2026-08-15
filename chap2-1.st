| sketch p P a A b B c C d D p1 p2 AC CA BC |
sketch _ DrGeoSketch new.
sketch text:'ratio of division (AB,C)=AC/BC' at:-4@3.
P _ sketch point:0@4.
P cross.P name:'P'.
A _ sketch point:(-3@0).
A cross.
a _ sketch line:A to:P.
a name:'a'.
B _ sketch point:(-2@0).
B cross.
b _ sketch line:B to:P.
b name:'b'.
C _ sketch point:(0@-2).
C cross.
c _ sketch line:C to:P.
c name:'c'.
D _ sketch point:(2@-2).
D cross.
d _ sketch line:D to:P.
d name:'d'.
p1 _ sketch point:(-2@-3).
p1 cross.
p2 _ sketch point:(2@-3).
p2 cross.
p _ sketch line:p1 to:p2.
p name:'p'.
A _ sketch intersectionOf:p and:a.
B _ sketch intersectionOf:p and:b.
C _ sketch intersectionOf:p and:c.
D _ sketch intersectionOf:p and:d.
A name:'A'.
B name:'B'.
C name:'C'.
D name:'D'.
AC _ sketch segment: A to:C.
AC hide.
CA _ sketch segment: C to:A.
CA hide.
BC _ sketch segment:B to:C.
BC hide. 
sketch value:[(AC mathItem length) / (BC mathItem length)] at:-3@-5.
sketch value:[(AC mathItem length) ] at:-3@-4.
sketch value:[(CA mathItem length) ] at:-3@-3.