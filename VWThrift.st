<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks®, 7.9.1 of 18 October 2012 on 1 November 2016 at 8:51:26 AM</time-stamp>


<component-created>
<name>Thrift</name> <type>package</type>
</component-created><!-- Package Thrift* -->


<component-created>
<name>Thrift</name> <type>package</type>
</component-created>

<class>
<name>TMessage</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name seqid type </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Protocol</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TCallMessage</name>
<environment>Smalltalk</environment>
<super>TMessage</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Protocol</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TProtocol</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>transport </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Protocol</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TBinaryProtocol</name>
<environment>Smalltalk</environment>
<super>TProtocol</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Protocol</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TResult</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>success oprot iprot exception </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TSizedObject</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>size </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Protocol</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TClient</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>iprot oprot seqid remoteSeqid </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TServer</name>
<environment>Smalltalk</environment>
<super>TClient</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>listenProcess </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TList</name>
<environment>Smalltalk</environment>
<super>TSizedObject</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>elemType </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Protocol</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TSet</name>
<environment>Smalltalk</environment>
<super>TList</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Protocol</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TMap</name>
<environment>Smalltalk</environment>
<super>TSizedObject</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>keyType valueType </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Protocol</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TSocket</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>host port stream socket </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Transport</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TStruct</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Protocol</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TTransport</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Transport</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TType</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TError</name>
<environment>Smalltalk</environment>
<super>Core.Error</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>code </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TProtocolError</name>
<environment>Smalltalk</environment>
<super>TError</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Protocol</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TTransportError</name>
<environment>Smalltalk</environment>
<super>TError</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Transport</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TTransportClosedError</name>
<environment>Smalltalk</environment>
<super>TTransportError</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Transport</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<class>
<name>TField</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name type id </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Thrift-Protocol</category>
<attributes>
<package>Thrift</package>
</attributes>
</class>

<methods>
<class-id>TMessage</class-id> <category>accessing</category>

<body package="Thrift" selector="type">type		^type ifNil: [0]</body>

<body package="Thrift" selector="type:">type: anInteger		type := anInteger</body>

<body package="Thrift" selector="seqid">seqid		^seqid ifNil: [0]</body>

<body package="Thrift" selector="seqid:">seqid: anInteger		seqid := anInteger</body>

<body package="Thrift" selector="name:">name: aString		name := aString</body>

<body package="Thrift" selector="name">name		^name ifNil: ['']</body>
</methods>


<methods>
<class-id>TCallMessage</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="type">type		^1</body>
</methods>


<methods>
<class-id>TProtocol</class-id> <category>writing</category>

<body package="Thrift" selector="writeDouble:">writeDouble: aFloat</body>

<body package="Thrift" selector="writeFieldStop">writeFieldStop</body>

<body package="Thrift" selector="writeStructBegin:">writeStructBegin: aStruct</body>

<body package="Thrift" selector="writeMessageBegin">writeMessageBegin</body>

<body package="Thrift" selector="writeBool:">writeBool: aBool</body>

<body package="Thrift" selector="writeMapEnd">writeMapEnd</body>

<body package="Thrift" selector="writeListBegin:">writeListBegin: aList</body>

<body package="Thrift" selector="writeFieldBegin:">writeFieldBegin: aField</body>

<body package="Thrift" selector="writeSetBegin:">writeSetBegin: aSet</body>

<body package="Thrift" selector="writeFieldEnd">writeFieldEnd</body>

<body package="Thrift" selector="writeI64:">writeI64: i64</body>

<body package="Thrift" selector="writeMessageEnd">writeMessageEnd</body>

<body package="Thrift" selector="writeMapBegin:">writeMapBegin: aMap</body>

<body package="Thrift" selector="writeI32:">writeI32: i32</body>

<body package="Thrift" selector="writeByte:">writeByte: aByte</body>

<body package="Thrift" selector="writeStructEnd">writeStructEnd</body>

<body package="Thrift" selector="writeI16:">writeI16: i16</body>

<body package="Thrift" selector="writeSetEnd">writeSetEnd</body>

<body package="Thrift" selector="writeString:">writeString: aString</body>

<body package="Thrift" selector="writeListEnd">writeListEnd</body>
</methods>

<methods>
<class-id>TProtocol</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="transport:">transport: aTransport		transport := aTransport</body>

<body package="Thrift" selector="transport">transport		^transport</body>
</methods>

<methods>
<class-id>TProtocol</class-id> <category>reading</category>

<body package="Thrift" selector="readMessageBegin">readMessageBegin</body>

<body package="Thrift" selector="readListEnd">readListEnd</body>

<body package="Thrift" selector="readDouble">readDouble</body>

<body package="Thrift" selector="readString">readString</body>

<body package="Thrift" selector="readByte">readByte</body>

<body package="Thrift" selector="readStructBegin">readStructBegin</body>

<body package="Thrift" selector="readSetBegin">readSetBegin</body>

<body package="Thrift" selector="readMessageEnd">readMessageEnd</body>

<body package="Thrift" selector="skip:">skip: aType		aType = TType stop ifTrue: [^self].	aType = TType bool ifTrue: [^self readBool].	aType = TType byte ifTrue: [^self readByte].	aType = TType i16 ifTrue: [^self readI16].	aType = TType i32 ifTrue: [^self readI32].	aType = TType i64 ifTrue: [^self readI64].	aType = TType string ifTrue: [^self readString].	aType = TType double ifTrue: [^self readDouble].	aType = TType struct		ifTrue:			[| field |			self readStructBegin.			[(field := self readFieldBegin) type = TType stop]				whileFalse:					[self skip: field type.					self readFieldEnd].			^self readStructEnd].	aType = TType map		ifTrue:			[| map |			map := self readMapBegin.			map size				timesRepeat:					[self skip: map keyType.					self skip: map valueType].			^self readMapEnd].	aType = TType list		ifTrue:			[| list |			list := self readListBegin.			list size timesRepeat: [self skip: list elemType].			^self readListEnd].	aType = TType set		ifTrue:			[| set |			set := self readSetBegin.			set size timesRepeat: [self skip: set elemType].			^self readSetEnd].	self error: 'Unknown type'</body>

<body package="Thrift" selector="readMapEnd">readMapEnd</body>

<body package="Thrift" selector="readI64">readI64</body>

<body package="Thrift" selector="readFieldEnd">readFieldEnd</body>

<body package="Thrift" selector="readBool">readBool</body>

<body package="Thrift" selector="readListBegin">readListBegin</body>

<body package="Thrift" selector="readI32">readI32</body>

<body package="Thrift" selector="readFieldBegin">readFieldBegin</body>

<body package="Thrift" selector="readStructEnd">readStructEnd</body>

<body package="Thrift" selector="readMapBegin">readMapBegin</body>

<body package="Thrift" selector="readSetEnd">readSetEnd</body>

<body package="Thrift" selector="readI16">readI16</body>

<body package="Thrift" selector="readSimpleType:">readSimpleType: aType		aType = TType bool ifTrue: [^self readBool].	aType = TType byte ifTrue: [^self readByte].	aType = TType double ifTrue: [^self readDouble].	aType = TType i16 ifTrue: [^self readI16].	aType = TType i32 ifTrue: [^self readI32].	aType = TType i64 ifTrue: [^self readI64].	aType = TType list ifTrue: [^self readBool]</body>
</methods>


<methods>
<class-id>TBinaryProtocol</class-id> <category>writing</category>

<body package="Thrift" selector="writeDouble:">writeDouble: aDouble		self		writeI32: (aDouble basicAt: 1);		writeI32: (aDouble basicAt: 2)</body>

<body package="Thrift" selector="writeField:">writeField: aField		self		writeByte: aField type;		writeI16: aField id</body>

<body package="Thrift" selector="writeFieldStop">writeFieldStop		self writeByte: TType stop</body>

<body package="Thrift" selector="writeInt:size:">writeInt: val size: size		1		to: size		do:			[:n | self writeByte: ((val bitShift: (size negated + n) * 8) bitAnd: 16rFF)]</body>

<body package="Thrift" selector="writeBool:">writeBool: bool		bool		ifTrue: [self writeByte: 1]		ifFalse: [self writeByte: 0]</body>

<body package="Thrift" selector="writeListBegin:">writeListBegin: aList		self		writeByte: aList elemType;		writeI32: aList size</body>

<body package="Thrift" selector="writeFieldBegin:">writeFieldBegin: aField		self writeByte: aField type.	self writeI16: aField id</body>

<body package="Thrift" selector="write:">write: aString		transport write: aString</body>

<body package="Thrift" selector="writeSetBegin:">writeSetBegin: aSet		self		writeByte: aSet elemType;		writeI32: aSet size</body>

<body package="Thrift" selector="writeI64:">writeI64: i64		self writeInt: i64 size: 8</body>

<body package="Thrift" selector="writeMapBegin:">writeMapBegin: aMap		self		writeByte: aMap keyType;		writeByte: aMap valueType;		writeI32: aMap size</body>

<body package="Thrift" selector="writeByte:">writeByte: aNumber		aNumber &gt; 16rFF ifTrue: [TError signal: 'writeByte too big'].	transport write: (Array with: aNumber)</body>

<body package="Thrift" selector="writeI32:">writeI32: i32		self writeInt: i32 size: 4</body>

<body package="Thrift" selector="writeI16:">writeI16: i16		self writeInt: i16 size: 2</body>

<body package="Thrift" selector="writeString:">writeString: aString		self		writeI32: aString size;		write: aString</body>

<body package="Thrift" selector="writeMessageBegin:">writeMessageBegin: msg		self		writeI32: (self version1 bitOr: msg type);		writeString: msg name;		writeI32: msg seqid</body>
</methods>

<methods>
<class-id>TBinaryProtocol</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="versionMask">versionMask		^16rFFFF0000</body>

<body package="Thrift" selector="version1">version1		^16r80010000</body>
</methods>

<methods>
<class-id>TBinaryProtocol</class-id> <category>reading</category>

<body package="Thrift" selector="readRawInt:">readRawInt: size		^self intFromByteArray: (transport read: size)</body>

<body package="Thrift" selector="readMessageBegin">readMessageBegin		| version |	version := self readI32.	(version bitAnd: self versionMask) = self version1		ifFalse: [TProtocolError signalWithCode: TProtocolError badVersion].	^(TMessage new)		type: (version bitAnd: 16r000000FF);		name: self readString;		seqid: self readI32</body>

<body package="Thrift" selector="readString">readString		| sz |	sz := self readI32.	^sz &gt; 0		ifTrue: [(transport read: sz) asString]		ifFalse: ['']</body>

<body package="Thrift" selector="readDouble">readDouble		| val |	val := Float new: 2.	^val		basicAt: 1			put: (self readRawInt: 4);		basicAt: 2			put: (self readRawInt: 4);		yourself</body>

<body package="Thrift" selector="readByte">readByte		^(self transport read: 1) first</body>

<body package="Thrift" selector="readSetBegin">readSetBegin	"element type, size"		^(TSet new)		elemType: self readByte;		size: self readI32</body>

<body package="Thrift" selector="unsignedInt:size:">unsignedInt: val size: size		^0 - (val - 1 bitXor: (2 raisedTo: size * 8) - 1)</body>

<body package="Thrift" selector="readI64">readI64		^self readInt: 8</body>

<body package="Thrift" selector="readBool">readBool		^self readByte isZero not</body>

<body package="Thrift" selector="readListBegin">readListBegin		^(TList new)		elemType: self readByte;		size: self readI32</body>

<body package="Thrift" selector="readI32">readI32		^self readInt: 4</body>

<body package="Thrift" selector="readFieldBegin">readFieldBegin		| field |	field := TField new type: self readByte.	^field type = TType stop		ifTrue: [field]		ifFalse:			[field				id: self readI16;				yourself]</body>

<body package="Thrift" selector="intFromByteArray:">intFromByteArray: buf		| vals |	vals := Array new: buf size.	1		to: buf size		do:			[:n | 			vals				at: n				put: ((buf at: n) bitShift: (buf size - n) * 8)].	^vals sum</body>

<body package="Thrift" selector="readInt:">readInt: size		| buf val |	buf := transport read: size.	val := self intFromByteArray: buf.	^buf first &gt; 16r7F		ifTrue: [self unsignedInt: val size: size]		ifFalse: [val]</body>

<body package="Thrift" selector="readMapBegin">readMapBegin		^(TMap new)		keyType: self readByte;		valueType: self readByte;		size: self readI32</body>

<body package="Thrift" selector="readI16">readI16		^self readInt: 2</body>
</methods>


<methods>
<class-id>TResult</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="exception">exception		^exception</body>

<body package="Thrift" selector="success:">success: anObject		success := anObject</body>

<body package="Thrift" selector="success">success		^success</body>

<body package="Thrift" selector="exception:">exception: anError		exception := anError</body>
</methods>


<methods>
<class-id>TClient class</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="binaryOnHost:port:">binaryOnHost: aString port: anInteger		| sock |	sock := (TSocket new)		host: aString;		port: anInteger;		open;		yourself.	^(self new)		inProtocol: (TBinaryProtocol new transport: sock);		yourself</body>
</methods>


<methods>
<class-id>TClient</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="nextSeqid">nextSeqid		^seqid		ifNil: [seqid := 0]		ifNotNil: [seqid := seqid + 1]</body>

<body package="Thrift" selector="outProtocol:">outProtocol: aProtocol		oprot := aProtocol</body>

<body package="Thrift" selector="validateRemoteMessage:">validateRemoteMessage: aMsg		remoteSeqid		ifNil: [remoteSeqid := aMsg seqid]		ifNotNil:			[remoteSeqid + 1 = aMsg seqid				ifFalse:					[TProtocolError						signal:							'Bad seqid: ' , aMsg seqid asString , '; wanted: ' , remoteSeqid asString].			remoteSeqid := aMsg seqid]</body>

<body package="Thrift" selector="inProtocol:">inProtocol: aProtocol		iprot := aProtocol.	oprot ifNil: [oprot := aProtocol]</body>
</methods>


<methods>
<class-id>TServer class</class-id> <category>instance creation</category>

<body package="Thrift" selector="binaryOnHost:port:">binaryOnHost: aString port: anInteger		| sock |	sock := (TSocket new)		host: aString;		port: anInteger;		bind;		yourself.	^(self new)		inProtocol: (TBinaryProtocol new transport: sock);		yourself</body>
</methods>


<methods>
<class-id>TServer</class-id> <category>accessing</category>

<body package="Thrift" selector="listenProcess">listenProcess	^listenProcess</body>

<body package="Thrift" selector="start">start	iprot ifNotNil: [ 		iprot transport ifNotNil: [ :tran |			self listenProcess ifNotNil: [ :proc | proc terminateWithExtremePrejudice ].			self listenProcess: ([				[ tran isOpen ] whileTrue: [					tran accept				]			] forkAt: 35).		].	]</body>

<body package="Thrift" selector="stop">stop	iprot ifNotNil: [ 		iprot transport ifNotNil: [ :tran |			tran close.			self listenProcess ifNotNil: [ :proc | proc terminateWithExtremePrejudice ].		].	]</body>

<body package="Thrift" selector="listenProcess:">listenProcess: aProcessInstance	listenProcess := aProcessInstance</body>
</methods>


<methods>
<class-id>TSizedObject</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="size:">size: anInteger		size := anInteger</body>

<body package="Thrift" selector="size">size		^size ifNil: [0]</body>
</methods>


<methods>
<class-id>TList</class-id> <category>accessing</category>

<body package="Thrift" selector="elemType">elemType		^elemType ifNil: [TType stop]</body>

<body package="Thrift" selector="elemType:">elemType: anInteger		elemType := anInteger</body>
</methods>


<methods>
<class-id>TMap</class-id> <category>accessing</category>

<body package="Thrift" selector="keyType">keyType		^keyType ifNil: [TType stop]</body>

<body package="Thrift" selector="valueType">valueType		^valueType ifNil: [TType stop]</body>

<body package="Thrift" selector="keyType:">keyType: anInteger		keyType := anInteger</body>

<body package="Thrift" selector="valueType:">valueType: anInteger		valueType := anInteger</body>
</methods>


<methods>
<class-id>TSocket</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="read:">read: size		| data |	[data := stream next: size.	data isEmpty		ifTrue:			[TTransportError signal: 'Could not read ' , size asString , ' bytes'].	^data]		on: OsError		do: [TTransportClosedError signal]</body>

<body package="Thrift" selector="host:">host: aString		host := aString</body>

<body package="Thrift" selector="write:">write: aCollection		[		"stream writeStream setBinary: (aCollection isString not).		stream setBinary: (aCollection isString not)."		stream nextPutAll: (aCollection isString ifTrue: [ aCollection asByteArray ] ifFalse: [ aCollection ])	]		on: OsError		do: [TTransportClosedError signal]</body>

<body package="Thrift" selector="close">close		[self isOpen ifTrue: [stream close]] ensure: [			socket ifNotNil: [			socket close. socket := nil.		]	]</body>

<body package="Thrift" selector="bind">bind	"Returns instance of #socketAccessor class"	socket := self socketAccessor		family: self socketAccessor AF_INET type: self socketAccessor SOCK_STREAM.	[ socket bindTo: (IPSocketAddress hostName: host port: port) ]		ifCurtailed: [ socket close ].	socket listenFor: 200.	^(socket readAppendStream) binary; yourself</body>

<body package="Thrift" selector="accept">accept	socket ifNotNil: [		socket accept	].</body>

<body package="Thrift" selector="socketAccessor">socketAccessor		^Smalltalk		at: #SocketAccessor		ifAbsent: [ Error raiseSignal: 'Socket Accessor Not Found' ]</body>

<body package="Thrift" selector="isOpen">isOpen		^stream isNil not		and: [socket notNil and: [ socket isActive]]</body>

<body package="Thrift" selector="open">open		stream := self connect</body>

<body package="Thrift" selector="flush">flush		stream flush</body>

<body package="Thrift" selector="port:">port: anInteger		port := anInteger</body>

<body package="Thrift" selector="connect">connect	"Returns instance of #socketAccessor class"	socket := self socketAccessor		family: self socketAccessor AF_INET type: self socketAccessor SOCK_STREAM.	[ socket connectTo: (IPSocketAddress hostName: host port: port) timeout: 180 ]		ifCurtailed: [ socket close ].	^(socket readAppendStream) binary; yourself</body>
</methods>


<methods>
<class-id>TStruct</class-id> <category>accessing</category>

<body package="Thrift" selector="name:">name: aString		name := aString</body>

<body package="Thrift" selector="name">name		^name</body>
</methods>


<methods>
<class-id>TTransport</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="flush">flush		self subclassResponsibility</body>

<body package="Thrift" selector="read:">read: anInteger		self subclassResponsibility</body>

<body package="Thrift" selector="readAll:">readAll: anInteger		^String new writeStream		ifNotNil:			[:str | 			[str size &lt; anInteger]				whileTrue: [str nextPutAll: (self read: anInteger - str size)]]</body>

<body package="Thrift" selector="write:">write: aString		self subclassResponsibility</body>

<body package="Thrift" selector="close">close		self subclassResponsibility</body>

<body package="Thrift" selector="isOpen">isOpen		self subclassResponsibility</body>

<body package="Thrift" selector="open">open		self subclassResponsibility</body>
</methods>


<methods>
<class-id>TType class</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="string">string		^11</body>

<body package="Thrift" selector="set">set		^14</body>

<body package="Thrift" selector="nameOf:">nameOf: aTypeCode		self typeMap do: [:each | each second = aTypeCode ifTrue: [^each first]].	^nil</body>

<body package="Thrift" selector="i32">i32		^8</body>

<body package="Thrift" selector="codeOf:">codeOf: aTypeName		self typeMap do: [:each | each first = aTypeName ifTrue: [^each second]].	^nil</body>

<body package="Thrift" selector="stop">stop		^0</body>

<body package="Thrift" selector="i16">i16		^6</body>

<body package="Thrift" selector="bool">bool		^2</body>

<body package="Thrift" selector="struct">struct		^12</body>

<body package="Thrift" selector="typeMap">typeMap		^#(#(#bool 2) #(#byte 3) #(#double 4) #(#i16 6) #(#i32 8) #(#i64 10) #(#list 15) #(#map 13) #(#set 15) #(#stop 0) #(#string 11) #(#struct 12) #(#void 1))</body>

<body package="Thrift" selector="void">void		^1</body>

<body package="Thrift" selector="map">map		^13</body>

<body package="Thrift" selector="i64">i64		^10</body>

<body package="Thrift" selector="double">double		^4</body>

<body package="Thrift" selector="byte">byte		^3</body>

<body package="Thrift" selector="list">list		^15</body>
</methods>


<methods>
<class-id>TError class</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="signalWithCode:">signalWithCode: anInteger		(self new)		code: anInteger;		signal</body>
</methods>


<methods>
<class-id>TError</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="code">code		^code</body>

<body package="Thrift" selector="code:">code: anInteger		code := anInteger</body>
</methods>


<methods>
<class-id>TProtocolError class</class-id> <category>as yet unclassified</category>

<body package="Thrift" selector="unknown">unknown		^0</body>

<body package="Thrift" selector="invalidData">invalidData		^1</body>

<body package="Thrift" selector="sizeLimit">sizeLimit		^3</body>

<body package="Thrift" selector="negativeSize">negativeSize		^2</body>

<body package="Thrift" selector="badVersion">badVersion		^4</body>
</methods>


<methods>
<class-id>TField</class-id> <category>accessing</category>

<body package="Thrift" selector="id:">id: anInteger		id := anInteger</body>

<body package="Thrift" selector="name:">name: anObject		name := anObject</body>

<body package="Thrift" selector="name">name		^name ifNil: ['']</body>

<body package="Thrift" selector="type">type		^type ifNil: [TType stop]</body>

<body package="Thrift" selector="id">id		^id ifNil: [0]</body>

<body package="Thrift" selector="type:">type: anInteger		type := anInteger</body>
</methods>



</st-source>
