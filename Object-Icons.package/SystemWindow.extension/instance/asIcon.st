*Object-Icons
asIcon
	^ super asIcon
		label: self label;
		image: (HaikuIconPack getFormFor: 'MiscDeskbarGroup' inSize: 64);
		yourself
		