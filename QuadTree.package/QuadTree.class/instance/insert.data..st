accessing
insert: rect data: data
	| leaf |
	leaf := Leaf rect: rect data: data.
	(root contains: rect)
		ifTrue: [ root insertLeaf: leaf ]
		ifFalse: [ self _grow: leaf ]