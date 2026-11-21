| sketch O o O1 O2 A AA B BB C CC f R A1 a  
imageOfPointInInvolutionBlock imageOfPointInInvolutionBlock2 |

sketch _ DrGeoSketch new.

imageOfPointInInvolutionBlock2 _ [ :ptR :lines :points |
		| k V W pt1 pt2 pt3 pt2R pt3R im1 im1R im2 im2R base aline gline |
	pt1 _ points at:1.
	im1 _ points at:2.
	im1R _ points at:3.
	pt2 _ points at:4.
	pt2R _ points at:5.
	im2 _ points at:6.
	im2R _ points at:7.
	pt3 _ points at:8.
	pt3R _ points at:9.
	base _ lines at:1.
	aline _ lines at:2.
	gline _ lines at:3.
	
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

imageOfPointInInvolutionBlock _ [ :ptR :lines :points |
		| k pt1 pt2 pt3 pt2R pt3R im1 im1R im2 im2R base aline gline |
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

       imageOfPointInInvolutionBlock2 value:ptR value:{ base.aline.gline } value:{pt1. im1. im1R. pt2. pt2R. im2. im2R. pt3. pt3R }.
].
	
O _ sketch point:0@4.
O cross.O name:'O'.
O1 _ sketch point:(-3@-2).
O1 cross.
O2 _ sketch point:(3@-2).
O2 cross.
o _ sketch line:O1 to:O2.
o name:'o'.
A _ sketch point:(-3@-3).
A cross.
f _ sketch line:O to:A.
A _ sketch intersectionOf:o and:f.
A name:'A'.
B _ sketch point:(0@-3).
B cross.
f _ sketch line:O to:B.
B _ sketch intersectionOf:o and:f.
B name:'B'.
AA _ sketch point:(1@-3).
AA cross.
f _ sketch line:O to:AA.
AA _ sketch intersectionOf:o and:f.
AA name:'A"'.
BB _ sketch point:(3@-3).
BB cross.
f _ sketch line:O to:BB.
BB _ sketch intersectionOf:o and:f.
BB name:'B"'.
R _ sketch point:(-2@3).
R cross.R name:'R'.
A1 _ sketch point:(3.5@2).
A1 cross.A1 name:'a'.
a _ sketch line:A to:A1.
C _ sketch point:(-1@-3).
C cross.
f _ sketch line:O to:C.
C _ sketch intersectionOf:o and:f.
C name:'C'.
f _ sketch line:R to:C.
CC _ imageOfPointInInvolutionBlock value:R value:{o.a } value:{ A.AA. B.BB. C }.
CC name:'C"'.
sketch line:O to:CC.
