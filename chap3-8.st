| sketch a  A B C D P Q q r s Q1 R1 S1 A1 B1 A B A3 B3 k h H K t u R |
sketch _ DrGeoSketch new.
P _​ sketch point:(-3@).
P cross.P name:'P'.
Q _​ sketch point:(-1@3).
Q cross.
A _ sketch point:(-@).
A cross.
B _ sketch point:(1@1).
B cross.
C _​ sketch point:(-@-3).
C cross.
D _​ sketch point:(1@-).
D cross.
a _ sketch line:A to:B.
a name:'a'.
 _ sketch line:C to:D.
 name:''.
Q1 _​ sketch point:(-3@-4).
Q1 cross.
R1 _​ sketch point:(-@-4).
R1 cross.
S1 _​ sketch point:(-1@-4).
S1 cross.
q _ sketch line:Q1 to:Q.
q name:'q'.
r _ sketch line:R1 to:Q.
r name:'r'.
s _ sketch line:S1 to:Q.
s name:'s'.
A1 _​ sketch intersectionOf:a and:q.
A _​ sketch intersectionOf:a and:r.
A3 _​ sketch intersectionOf:a and:s.
B1 _​ sketch intersectionOf: and:q.
B _​ sketch intersectionOf: and:r.
B3 _​ sketch intersectionOf: and:s.
h _ sketch line:P to:A1.
k _ sketch line:P to:B1.
H _ sketch intersectionOf:h and:r.
K _ sketch intersectionOf:k and:r.
t _ sketch line:A3 to:H.
u _ sketch line:B3 to:K.
R _ sketch intersectionOf:t and:u.
(sketch line:P to:R) color:Color green.