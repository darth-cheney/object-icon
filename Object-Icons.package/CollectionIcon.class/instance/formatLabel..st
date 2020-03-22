formatting
formatLabel: aString
	"For a given string that will be the potential
	base label, we append some brackets and the
	current size of the collection"
	wrappedObject ifNil: [ ^ aString ].
	^ (String streamContents: [ :s | 
		s
			nextPutAll: aString;
			nextPut: $ ;
			nextPut: $[;
			nextPutAll: wrappedObject size asString;
			nextPut: $] ])
	