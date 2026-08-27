| sketch A B |
sketch _ DrGeoSketch new.
sketch text:'complete 2-point' at:(-2@4).
sketch text:'2 points  1line/point' at:(-2@3).
sketch text:'2points/line    1 line' at:(-2@2).
A _ sketch point:(-3@0).
A cross.
A name:'A'.
B _ sketch point:(2@0).
B cross.
B name:'B'.
sketch line:A to:B.
