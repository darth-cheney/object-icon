as yet unclassified
getFormFor: aString inSize: anInteger
	| basename encoded |
	basename := aString,(anInteger asString).
	encoded := self perform: basename asSymbol.
	^ PNGReadWriter formFromStream: (encoded base64Decoded asByteArray readStream).