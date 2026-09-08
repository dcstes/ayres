| sketch P1 P2 p Q1 Q2 q R1 R2 r S1 S2 s P Q R S T U a b C d e c C1 C2  A B D E signlenBlock block1 block2 |
sketch _ DrGeoSketch new.

signlenBlock _ [ :pt1 :pt2 :line | 
	| point1 point2 u u12 dist dotprod |
	u _ line mathItem direction.
	point1 _ pt1 mathItem point.
	point2 _ pt2 mathItem point.
	u12 _ point2 - point1.
	dist _ point1 dist:point2.
	dotprod _ u dotProduct:u12.
	dist * (dotprod sign) 
	].

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
C color:(Color green).
d _ sketch line:C to:S.
e _ sketch line:C to:T.
C1 _ sketch point:(-4@-2).
C1 cross.
C2 _ sketch point:(4@2).
C2 cross.
c _ sketch line:C1 to:C2.
c color:(Color blue).
A _ sketch intersectionOf:a and:c.
B _ sketch intersectionOf:b and:c.
D _ sketch intersectionOf:d and:c.
E _ sketch intersectionOf:e and:c.

sketch text:'(A,B;D,E)' at:-3@-3.
block1 _ [(signlenBlock value:A value:D value:c) / (signlenBlock value:B value:D value:c)].
block2 _ [(signlenBlock value:A value:E value:c) / (signlenBlock value:B value:E value:c)].
sketch value:[(block1 value) /(block2 value)] at:-1@-3.