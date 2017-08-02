accessing
overlaps: aRect
	| ax axx ay ayy bx bxx by byy |
	ax := x.
	axx := x + width - 1.
	ay := y.
	ayy := y + height - 1.
	bx := aRect x.
	bxx := aRect x + aRect width - 1.
	by := aRect y.
	byy := aRect y + aRect height + 1.
	^ (axx >= bx) & (ax <= bxx) & (ayy >= by) & (ay <= byy)