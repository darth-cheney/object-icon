*Object-Icons
asIcon
	^ ObjectIcon new
		wrap: self;
		onDoubleClick: [ :wrapped |
			self world ifNil: [ wrapped openInWorld ]];
		image: (HaikuIconPack getFormFor: 'AppMandelbrot2' inSize: 64);
		yourself