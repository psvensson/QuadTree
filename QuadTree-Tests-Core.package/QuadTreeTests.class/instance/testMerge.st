tests
testMerge
	| r rect1 rect2 |
	rect1 := Rect
		x: -10
		y: 20
		width: 50
		height: 20.
	rect2 := Rect
		x: -20
		y: 400
		width: 35
		height: 60.
	r := rect1 merge: rect2.
	self assert: r x equals: -20;
	 assert: r y equals: 20;
	 assert: r width equals: 60;
	 assert: r height equals: 440