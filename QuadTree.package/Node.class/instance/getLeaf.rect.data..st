accessing
getLeaf: results rect: rect data: data
	"Transcript
		show: 'getLeaf for ' , rect asString , ' q1 isNil = ' , q1 isNil asString , ' leafs size is ' , leafs size asString;
		cr."

	q1 isNil
		ifTrue: [ leafs
				do: [ :l | 
					| overlap |
					overlap := l overlaps: rect.
					Transcript show: 'getLeaf - leaf ' , l asString , ' overlaps ' , rect asString.
					overlap & (data isNil | (l data = data))
						ifTrue: [ results add: l ] ] ]
		ifFalse: [ (q1 overlaps: rect)
				ifTrue: [ "Transcript show: rect asString , ' overlaps ' , q1 asString." q1 getLeaf: results rect: rect data: data ].
			(q2 overlaps: rect)
				ifTrue: [ "Transcript show: rect asString , ' overlaps ' , q2 asString." q2 getLeaf: results rect: rect data: data ].
			(q3 overlaps: rect)
				ifTrue: [ "Transcript show: rect asString , ' overlaps ' , q3 asString." q3 getLeaf: results rect: rect data: data ].
			(q4 overlaps: rect)
				ifTrue: [ "Transcript show: rect asString , ' overlaps ' , q4 asString." q4 getLeaf: results rect: rect data: data ] ].
	^ results