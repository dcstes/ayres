| sketch p t f g h h0 i j k Sinf Rinf P0 P1 Pm1 P2 Px E0 E1 Em1 L1 K block1 block2 signlenBlock |
sketch _ DrGeoSketch new.

sketch text:'(P(-1),P1;P2,Px)' at:-4@3.
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

P0 _ sketch point:(-3@-2).
P0 cross.P0 name:'P0'.
P1 _ sketch point:(-2@-2).
P1 cross.P1 name:'P1'.
p _ sketch line:P0 to:P1.
Sinf _ sketch point:(1@3).
Sinf cross.
Rinf _ sketch point:(2@3).
Rinf cross.
f _ sketch line:P0 to:Rinf.
g _ sketch line:P1 to:Sinf.
E0 _ sketch intersectionOf:f and:g.
E0 name:'E0'.
t _ sketch parallel: p at: E0.
h _ sketch parallel:f at:P1.
E1 _ sketch intersectionOf:h and:t.
E1 name:'E1'.
h0 _ sketch parallel:g at:P0.
Em1 _ sketch intersectionOf:h0 and:t.
Em1 name:'E-1'.
i _ sketch parallel:f at:Em1.
Pm1 _ sketch intersectionOf:i and:p.
Pm1 name:'P-1'.
i _ sketch parallel:g at:E1.
P2 _ sketch intersectionOf:i and:p.
P2 name:'P2'.
i _ sketch line:Pm1 to:E1.
L1 _ sketch intersectionOf:g and:i.
L1 name:'L1'.
j _ sketch parallel:g at:Pm1.
K _ sketch intersectionOf:h and:j.
K name:'K'.
k _ sketch line:K to:L1.
Px _ sketch intersectionOf:k and:p.
Px name:'Px'.
block1 _ [(signlenBlock value:Pm1 value:P2 value:p) / (signlenBlock value:P1 value:P2 value:p)].
block2 _ [(signlenBlock value:Pm1 value:Px value:p) / (signlenBlock value:P1 value:Px value:p)].
sketch value:[(block1 value) /(block2 value)] at:-4@2.