| sketch f g f1 f2 P0 P1 Pm1 a A b b0 c0 B c C d D E block1 block2 signlenBlock |
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
d _ sketch parallel: g at:P.
D _ sketch intersectionOf:f and:d.
D name:'D'.
c _ sketch line:P0 to:P.
b _ sketch line:P1 to:P.
C _ sketch intersectionOf:f and:c.
B _ sketch intersectionOf:f and:b.
C name:'C'.
B name:'B'.
b0 _ sketch parallel:b at:P0.
E _ sketch intersectionOf:d and:b0.
E name:'E'.
c0 _ sketch parallel:c at:E.
Pm1 _ sketch intersectionOf:g and:c0.
Pm1 name:'P-1'.
a _ sketch line:Pm1 to:P.
A _ sketch intersectionOf:f and:a.
A name:'A'.
sketch text:'(-1,1;0,inf)' at:-4@3.
block1 _ [(signlenBlock value:A value:C value:f) / (signlenBlock value:B value:C value:f)].
block2 _ [(signlenBlock value:A value:D value:f) / (signlenBlock value:B value:D value:f)].
sketch value:[(block1 value) /(block2 value)] at:-4@2.