layout
acceptDroppingMorph: aMorph event: event
	"We only want to accept other object icons"
	(aMorph class = ObjectIcon)
		ifTrue: [ ^ self addDroppedIcon: aMorph ].
	(aMorph class = self class)
		ifTrue: [ ^ self addDroppedIcon: aMorph ].