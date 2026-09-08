| sketch P1 P2 p Q1 Q2 q R1 R2 r S1 S2 s P Q R S T U a b C d e|
sketch _ DrGeoSketch new.

P1 _ sketch point:(1@1).
P1 cross.
P2 _ sketch point:(-2@0.5).
P2 cross.
p _ sketch line:P1 to:P2.
Q1 _ sketch point:(1@-2).
Q1 cross.
Q2 _ sketch point:(-2@-0.5).
Q2 cross.
q _ sketch line:Q1 to:Q2.
R1 _ sketch point:(-0.2@2).
R1 cross.
R2 _ sketch point:(-1.3@-2).
R2 cross.
r _ sketch line:R1 to:R2.
S1 _ sketch point:(0.3@2).
S1 cross.
S2 _ sketch point:(0.5@-3).
S2 cross.
s _ sketch line:S1 to:S2.
P _ sketch intersectionOf:q and:r.
Q _ sketch intersectionOf:p and:r.
R _ sketch intersectionOf:q and:s.
S _ sketch intersectionOf:p and:q.
T _ sketch intersectionOf:s and:r.
U _ sketch intersectionOf:p and:s.
P name:'P'.
Q name:'Q'.
R name:'R'.
S name:'S'.
T name:'T'.
U name:'U'.
a _ sketch line:Q to:R.
b _ sketch line:U to:P.
C _ sketch intersectionOf:a and:b.
d _ sketch line:C to:S.
e _ sketch line:C to:T.