accessing
overlaps: rect
	| ax axx ay ayy bx bxx by byy |
	ax := x.
	axx := x + width - 1.
	ay := y.
	ayy := y + height - 1.
	bx := rect x.
	bxx := rect x + rect width - 1.
	by := rect y.
	byy := rect y + rect height + 1.
	^ (axx >= bx) & (ax <= bxx) & (ayy >= by) & (ay <= byy)