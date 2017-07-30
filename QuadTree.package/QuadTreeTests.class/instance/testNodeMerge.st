tests
testNodeMerge
	|  |
	node split.
	node merge.
	self assert: (node q1) isNil .
	self assert: (node q2) isNil .
	self assert: (node q3) isNil .
	self assert: (node q4) isNil .
	self assert: (node leafs) isNotNil .
	