| sketch P Q1 Q R S S1 T U p q r s C a b d e |
sketch _ DrGeoSketch new.

P _ sketch point:(-0.1@1).
P cross. P name:'P'.
R _ sketch point:(-1@0).
R cross. R name:'R'.
p _ sketch line:R to:P.
S _ sketch point:(0.5@-1).
S cross. S name:'S'.
r _ sketch line:R to:S.
a _ sketch line:P to:S.
Q1 _ sketch point:(-1.5@0.2).
Q1 cross.
q _ sketch line:P to:Q1.
Q _ sketch intersectionOf:r and:q.
S1 _ sketch point:(-2@-0.5).
S1 cross.
s _ sketch line:S to:S1.
T _ sketch intersectionOf:p and:s.
U _ sketch intersectionOf:q and:s.
b _ sketch line:Q to:T.
C _ sketch intersectionOf:a and:b.
C name:'C'.
d _ sketch line:C to:R.
e _ sketch line:C to:U.