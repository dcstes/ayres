| sketch p P a A b B B2 c C C2 d D p1 p2 q q1 block1 block2 block3 signlenBlock|
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


sketch text:'cross ratio (A,B;C,X)=lambda (<0)' at:-5@3.
P _ sketch point:1@-4.
P cross.P name:'P'.
A _ sketch point:(-3@0).
A cross.
a _ sketch line:A to:P.
a name:'a'.
B _ sketch point:(2@0).
B cross.
b _ sketch line:B to:P.
b name:'b'.
C _ sketch point:(4@-1).
C cross.
c _ sketch line:C to:P.
c name:'c'.
p1 _ sketch point:(-2@-2).
p1 cross.
p2 _ sketch point:(1@-2).
p2 cross.
p _ sketch line:p1 to:p2.
p name:'p'.
A _ sketch intersectionOf:p and:a.
B _ sketch intersectionOf:p and:b.
C _ sketch intersectionOf:p and:c.
q1 _ sketch point:(-1@-3).
q1 cross.
q _ sketch line:A to:q1.
A name:'A'.
B name:'B'.
C name:'C'.
B2 _ sketch intersectionOf:q and:b.
C2 _ sketch intersectionOf:q and:c.
B2 name:'B"'.
C2 name:'C"'.
d _ sketch parallel:q at:P.
d color:Color green.
D _ sketch intersectionOf:p and:d.
D name:'X'.
block1 _ [(signlenBlock value:A value:C value:p) / (signlenBlock value:B value:C value:p)].
block2 _ [(signlenBlock value:B value:D value:p) / (signlenBlock value:A value:D value:p)].
block3 _ [(signlenBlock value:A value:C2 value:q) / (signlenBlock value:B2 value:C2 value:q)].
sketch text:'AC"/B"C"' at:-5@5.
sketch text:'(A,B;C,X)' at:-5@4.
sketch value:[(block1 value) * (block2 value)] at:-1@4.
sketch value:[(block3 value)] at:-1@5.