tests - variables
testQuadTreeInsert
	quadTree insert: rectA data: 'dataA'.
	self assert: (quadTree root leafs at: 1) data equals: 'dataA'.
	quadTree insert: rectA data: 'dataA'.
	quadTree insert: rectB data: 'dataB'.
	self assert: (quadTree root width) equals: 256.