as yet unclassified
getFormFromCache: aName inSize: anInteger
	"Attempts to retrieve the form from the
	FormCache. If it is not present, we create the
	form from the source method then add it to the
	cache, responding with the final form"
	| key createdForm |
	key := aName,(anInteger asString).
	FormCache at: key
		ifPresent: [ ^ FormCache at: key ]
		ifAbsent: [ 
			createdForm := self getFormFor: aName inSize: anInteger.
			FormCache at: key put: createdForm.
			^ createdForm ].