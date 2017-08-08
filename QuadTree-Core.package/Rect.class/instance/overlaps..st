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
	byy := aRect y + aRect height - 1.
	"
	Transcript
		show:
			'Rect overlaps axx >= bx -> ' , (axx >= bx) asString , ' ax < bxx -> ' , (ax <= bxx) asString , ' ayy >= by -> ' , (ayy >= by) asString
				, ' ay <= byy -> ' , (ay <= byy) asString;
		cr.
		"
	^ axx >= bx & (ax <= bxx) & (ayy >= by) & (ay <= byy)