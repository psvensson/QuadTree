tests
testNodeMerge
	node split.
	node merge.
	self assert: node q1 isNil;
	 assert: node q2 isNil;
	 assert: node q3 isNil;
	 assert: node q4 isNil;
	 assert: node leafs isNotNil