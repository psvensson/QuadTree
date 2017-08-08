accessing
trim: rect
	| newX newY newWidth newHeight rv |
	x > rect x
		ifTrue: [ newX := x ]
		ifFalse: [ newX := rect x ].
	y > rect y
		ifTrue: [ newY := y ]
		ifFalse: [ newY := rect y ].
	x + width < (rect x + rect width)
		ifTrue: [ newWidth := x - newX + width ]
		ifFalse: [ newWidth := rect x - newX + rect width ].
	y + height < (rect y + rect height)
		ifTrue: [ newHeight := y - newY + height ]
		ifFalse: [ newHeight := rect y - newY + rect height ].
	rv := Rect 
		x: newX
		y: newY
		width: newWidth
		height: newHeight.
	^ rv