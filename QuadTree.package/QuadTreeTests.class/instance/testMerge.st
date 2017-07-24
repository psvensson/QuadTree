tests
testMerge
	| r rect1 rect2 |
	
	rect1 := Rect new.
	rect1 x: -10; y: 20; width: 50; height: 20.
	rect2 := Rect new.
	rect2 x: -20; y: 400; width: 35; height: 60.
	
	r := rect1 merge: rect2.
	
	self assert: r x equals: -20.
	self assert: r y equals: 20.
	self assert: r width equals: 60.
	self assert: r height equals: 440.