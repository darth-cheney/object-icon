dropping/grabbing
wantsDroppedMorph: aMorph event: evt
	(aMorph class = ObjectIcon)
		ifTrue: [ ^ true ].
	^ aMorph class = self class