accessing
get: rect data: data
	| leafs results uniqueleafs |
	leafs := root getLeaf: rect data: data.
	uniqueleafs := Dictionary new.
	results := OrderedCollection new.
	leafs
		do: [ :l | 
			| result |
			uniqueleafs
				at: l
				ifAbsent: [ uniqueleafs at: l put: l.
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
						ifFalse: [ result at: #data put: l data ] ].
			results add: result ].
	^ results 	