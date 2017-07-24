accessing
clip: rect
	| ax ay aw ah bx by bh bw rects |
	rects := Stack new.
	(self overlaps: rect)
		ifFalse: [ rects push: self.
			^ rects asArray ].
	ax := x.
	ay := y.
	aw := width.
	ah := height.
	bx := rect x.
	by := rect y.
	bw := rect width.
	bh := rect height.
	ay < by
		ifTrue: [ | r |
			Transcript show: 'ay<by'.
			Transcript cr.
			r := Rect new.
			r
				x: ax;
				y: ay;
				width: aw;
				height: by - ax.
			rects push: r ].
	ax < bx
		ifTrue: [ | r |
			Transcript show: 'ax<bx'.
			Transcript cr.
			r := Rect new.
			r
				x: ax;
				y: (ay max: by);
				width: bx - ax;
				height: (ay + ah min: by + bh) - (ay max: by).
			rects push: r ].
	ax + aw > (bx + bw)
		ifTrue: [ | r |
			Transcript show: 'ax + aw > (bx + bw)'.
			Transcript cr.
			r := Rect new.
			r
				x: bx + bw;
				y: (ay max: by);
				width: ax + aw - (bx + bw);
				height: (ay + ah min: by + bh) - (ay max: by).
			rects push: r.
			].
	ay + ah > (by + bh)
		ifTrue: [ | r |
			Transcript show: 'ay + ah > (by + bh)'.
			Transcript cr.
			r := Rect new.
			r
				x: ax;
				y: by + bh;
				width: ax + aw - ax;
				height: ay + ah - (by + bh).
			rects push: r ].
	^ rects asArray reverse