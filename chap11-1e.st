| sketch R S T X x A a B b C c A1 a1 B1 b1 C1 c1 P Q p xc1 PQ RS PS QR  imageOfPointInInvolutionBlock conic Bpt |

sketch _ DrGeoSketch new.

imageOfPointInInvolutionBlock _ [ :ptR :lines :points |
		| k V W  pt1 pt2 pt3 pt2R pt3R im1 im1R im2 im2R base aline gline |
	pt1 _ points at:1.
	im1 _ points at:2.
	pt2 _ points at:3.
	im2 _ points at:4.
	pt3 _ points at:5.
	base _ lines at:1.
	aline _ lines at:2.
	
	k _ sketch line:ptR to:pt2.
       pt2R _ sketch intersectionOf:k and:aline.
       k hide.pt2R hide.
       gline _ sketch line:ptR to:im1.
       im1R _ sketch intersectionOf:gline and:aline.
       gline hide.im1R hide.
       k _ sketch line:ptR to:im2.
       im2R _ sketch intersectionOf:k and:aline.
       k hide.im2R hide.
       k _ sketch line:ptR to:pt3.
       pt3R _ sketch intersectionOf:k and:aline.
       k hide.pt3R hide.
       k _ sketch line:im2 to:pt2R.
       k hide.
       V _ sketch intersectionOf:gline and:k.
       V hide.
       k _ sketch line:im2 to:pt3R.
       k hide.
       W _ sketch intersectionOf:gline and:k.
       W hide.
       k _ sketch line:pt2R to:W.
       k hide.
       sketch intersectionOf:base and:k.
].

R _ sketch point:0@4.
R cross.R name:'R'.
S _ sketch point:3.5@4.
S cross.S name:'S'.
T _ sketch point:2@2.
T cross.T name:'T'.

A _ sketch point:-3.125@-2.
A cross.A name:'A'.
Bpt _ -1.125@-3.
B _ sketch point:Bpt.
B cross.B name:'B'.
C _ sketch point:1.125@-2.
C cross.C name:'C'.

conic _ OrderedCollection new.
conic add:R.
conic add:S.
conic add:A.
conic add:B.
conic add:C.

P _ C.
Q _ A.

S color:(Color green).
R color:(Color green).
P color:(Color green).
Q color:(Color green).

PQ _ sketch line:P to:Q.
RS _ sketch line:S to:R.
PS _ sketch line:S to:P.
QR _ sketch line:R to:Q.
PQ color:(Color green).
RS color:(Color green).
PS color:(Color green).
QR color:(Color green).


0 to: 180 by:5 do: [ :i |
	| pt1 pt2 im1 im2 pt1Line |
X _ sketch point:((Point r: 5  degrees:i) translatedBy:Bpt).
X cross.
x _ sketch line:X to:B.
x hide.
pt1 _ sketch intersectionOf:PQ and:x.
pt1 hide.
pt2 _ sketch intersectionOf:PS and:x.
pt2 hide.
im1 _ sketch intersectionOf:RS and:x.
im1 hide.
im2 _ sketch intersectionOf:QR and:x.
im2 hide.
pt1Line _ sketch line:pt1 to:A.
pt1Line hide.
X _ imageOfPointInInvolutionBlock value:T value:{x.pt1Line } value:{pt1.im1.pt2.im2.B}.
X color:(Color blue).
conic add:X.
].
