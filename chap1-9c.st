| sketch p p1 p2 P Q a aq A A1 b bq B B1 c cq C C1 d dq D D1 i |
sketch _ DrGeoSketch new.
sketch text:'P(a,b,c,d,...) =axis p^ P"(a",b",c",d",...) ' at:-4@-3.
P _ sketch point:0@4.
P cross.P name:'P'.
p1 _ sketch point:2@-1.
p1 cross.
p2 _ sketch point:3@-1.
p2 cross.
p _ sketch line: p1 to: p2.
p name:'p'.
Q _ sketch point:3@4.
Q cross.Q name:'P"'.
A1 _ sketch point:(-3@0).
A1 cross.
a _ sketch line:A1 to:P.
a name:'a'.
A _ sketch intersectionOf:a and:p.
A name:'A'.
aq _ sketch line:A to:Q.
aq name:'a"'.
B1 _ sketch point:(-2@0).
B1 cross.
b _ sketch line:B1 to:P.
b name:'b'.
B _ sketch intersectionOf:b and:p.
B name:'B'.
bq _ sketch line:B to:Q.
bq name:'b"'.
C1 _ sketch point:(0@-2).
C1 cross.
c _ sketch line:C1 to:P.
c name:'c'.
C _ sketch intersectionOf:c and:p.
C name:'C'.
cq _ sketch line:C to:Q.
cq name:'c"'.
D1 _ sketch point:(2@-2).
D1 cross.
d _ sketch line:D1 to:P.
d name:'d'.
D _ sketch intersectionOf:d and:p.
D name:'D'.
dq _ sketch line:D to:Q.
dq name:'d"'.
i _ sketch line:P to:Q.
i name:'i'.
i color:Color green.