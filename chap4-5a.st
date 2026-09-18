| sketch f g f1 f2 P0 P1 P2 a A b B c C d D S R T S1 R1 T1 s r t bt br P Q sq block1 block2 signlenBlock |
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

P _ sketch point:(-1@0).
P cross.P name:'P'.
P0 _ sketch point:(-3@-2).
P0 cross.P0 name:'P0'.
P1 _ sketch point:(-2@-2).
P1 cross.P1 name:'P1'.
g _ sketch line:P0 to:P1.
f1 _ sketch point:(1@3).
f1 cross.
f2 _ sketch point:(2@-3).
f2 cross.
f _ sketch line:f1 to:f2.
a _ sketch parallel: g at:P.
A _ sketch intersectionOf:f and:a.
A name:'A'. 
c _ sketch line:P0 to:P.
b _ sketch line:P1 to:P.
C _ sketch intersectionOf:f and:c.
B _ sketch intersectionOf:f and:b.
C name:'C'.
B name:'B'.
T1 _ sketch point:(3@1).
T1 cross.
t _ sketch line:A to:T1.
S1 _ sketch point:(3@2).
S1 cross.
s _ sketch line:A to:S1.
R1 _ sketch point:(2@2).
R1 cross.
r _ sketch line:C to:R1.
T _ sketch intersectionOf:t and:r.
R _ sketch intersectionOf:s and:r.
bt _ sketch line:B to:T.
S _ sketch intersectionOf:bt and:s.
br _ sketch line:B to:R.
Q _ sketch intersectionOf:t and:br.
sq _ sketch line:S to:Q.
D _ sketch intersectionOf:f and:sq.
D name:'D'.
d _ sketch line:P to:D.
P2 _ sketch intersectionOf:g and:d.
P2 name:'P2'.
sketch text:'(inf,P1;P0,P2)' at:-4@3.
block1 _ [(signlenBlock value:A value:C value:f) / (signlenBlock value:B value:C value:f)].
block2 _ [(signlenBlock value:A value:D value:f) / (signlenBlock value:B value:D value:f)].
sketch value:[(block1 value) /(block2 value)] at:-4@2.