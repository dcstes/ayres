| sketch A B C |
sketch _ DrGeoSketch new.
sketch text:'complete 3-point' at:(-2@4).
sketch text:'3 points  2lines/point' at:(-2@3).
sketch text:'2points/line    3 lines' at:(-2@2).
A _ sketch point:(-3@0).
A cross.
A name:'A'.
B _ sketch point:(2@0).
B cross.
B name:'B'.
C _​ sketch point:(0@-3).
C cross.
C name:'C'.
sketch line:A to:B.
sketch line:B to:C.
sketch line:A to:C.