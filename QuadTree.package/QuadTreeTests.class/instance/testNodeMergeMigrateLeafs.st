tests
testNodeMergeMigrateLeafs
	|  |
	node mockInsertLeaf:  leafA .
	node split.
	self halt.
	node merge.
	self assert: ((node leafs at:1) data  ) isNotNil .
	
	