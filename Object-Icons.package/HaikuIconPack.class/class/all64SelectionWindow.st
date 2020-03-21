as yet unclassified
all64SelectionWindow
	| container icons scrollPane |
	icons := self iconNames64 collect: [ :iconName |
		| image |
		image := self getImageFor: iconName inSize: 64.
		(ObjectIcon new 
			label: iconName;
			image: image;
			yourself) ].
	icons inspect.