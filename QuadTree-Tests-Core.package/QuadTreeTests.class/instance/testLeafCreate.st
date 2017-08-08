tests
testLeafCreate
	leafA := Leaf
		rect:
			(Rect
				x: 0
				y: 10
				width: 64
				height: 54)
		data: 'LeafA'.
	self assert: leafA data equals: 'LeafA';
	 assert: leafA rect width equals: 64