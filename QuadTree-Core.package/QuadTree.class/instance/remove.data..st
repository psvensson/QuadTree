accessing
remove: rect data: data
	| leafs results uniqueleafs |
	leafs := root getLeaf: rect data: data.
	results := OrderedCollection new.
	uniqueleafs := Dictionary new.
	leafs
		do: [ :l | 
			uniqueleafs
				at: l
				ifAbsent: [ | result |
					result := Dictionary new.
					result
						at: #rect
						put:
							(Rect
								x: l x
								y: l y
								width: l width
								height: l height).
					l data isNil
						ifFalse: [ result at: #data put: l data ].
					results add: result ] .
				self root removeLeaf: l.
				].
	^ results