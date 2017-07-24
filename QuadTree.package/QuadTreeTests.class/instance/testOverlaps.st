tests
testOverlaps
	| r1 r2 r3 r4 |
	r1 := Rect new.
	r1
		x: 50;
		y: 50;
		width: 100;
		height: 100.
	r2 := Rect new.
	r2
		x: 0;
		y: 0;
		width: 100;
		height: 100.
		
	r3 := Rect new.
	r3 
		x: 100;
		y: 100;
		width: 100;
		height: 100.
	r4 := Rect new.
	r4 
		x: 0;
		y: 0;
		width: 100;
		height: 100.	
	self assert: (r1 overlaps: r2) equals: true.
	self assert: (r3 overlaps: r4) equals: false