accessing
merge: rect
	| newRect newX newY newWidth newHeight |
	x < rect x
		ifTrue: [ newX := x ]
		ifFalse: [ newX := rect x ].
	y < rect y
		ifTrue: [ newY := y ]
		ifFalse: [ newY := rect y ].
	x + width > (rect x + rect width)
		ifTrue: [ newWidth := x - newX + width ]
		ifFalse: [ newWidth := rect x - x + rect width ].
	y + height > (rect y + rect height)
		ifTrue: [ newHeight := y - newY + height ]
		ifFalse: [ newHeight := rect y - y + rect height ].
	newRect := Rect new.
	newRect x: newX; y: newY; width: newWidth; height: newHeight .
	^ newRect .	