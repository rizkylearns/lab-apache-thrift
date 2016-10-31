'From VisualWorks®, 7.9.1 of 18 October 2012 on 31 October 2016 at 8:42:43 AM'!


CodeComponent create: #package named: 'Thrift'!"Package Thrift*"!


Error subclass: #TError
	instanceVariableNames: 'code '
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift'!

TError class
	instanceVariableNames: ''!

TError subclass: #TProtocolError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Protocol'!

TProtocolError class
	instanceVariableNames: ''!

TError subclass: #TTransportError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Transport'!

TTransportError class
	instanceVariableNames: ''!

TTransportError subclass: #TTransportClosedError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Transport'!

TTransportClosedError class
	instanceVariableNames: ''!

Object subclass: #TClient
	instanceVariableNames: 'iprot oprot seqid remoteSeqid '
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift'!

TClient class
	instanceVariableNames: ''!

Object subclass: #TField
	instanceVariableNames: 'name type id '
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Protocol'!

TField class
	instanceVariableNames: ''!

Object subclass: #TMessage
	instanceVariableNames: 'name seqid type '
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Protocol'!

TMessage class
	instanceVariableNames: ''!

TMessage subclass: #TCallMessage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Protocol'!

TCallMessage class
	instanceVariableNames: ''!

Object subclass: #TProtocol
	instanceVariableNames: 'transport '
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Protocol'!

TProtocol class
	instanceVariableNames: ''!

TProtocol subclass: #TBinaryProtocol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Protocol'!

TBinaryProtocol class
	instanceVariableNames: ''!

Object subclass: #TResult
	instanceVariableNames: 'success oprot iprot exception '
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift'!

TResult class
	instanceVariableNames: ''!

Object subclass: #TSizedObject
	instanceVariableNames: 'size '
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Protocol'!

TSizedObject class
	instanceVariableNames: ''!

TSizedObject subclass: #TList
	instanceVariableNames: 'elemType '
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Protocol'!

TList class
	instanceVariableNames: ''!

TList subclass: #TSet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Protocol'!

TSet class
	instanceVariableNames: ''!

TSizedObject subclass: #TMap
	instanceVariableNames: 'keyType valueType '
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Protocol'!

TMap class
	instanceVariableNames: ''!

Object subclass: #TSocket
	instanceVariableNames: 'host port stream '
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Transport'!

TSocket class
	instanceVariableNames: ''!

Object subclass: #TStruct
	instanceVariableNames: 'name '
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Protocol'!

TStruct class
	instanceVariableNames: ''!

Object subclass: #TTransport
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift-Transport'!

TTransport class
	instanceVariableNames: ''!

Object subclass: #TType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Thrift'!

TType class
	instanceVariableNames: ''!

!TMessage methodsFor: 'accessing' stamp: ' 31/10/16 08:42'!

seqid
	
	^seqid ifNil: [0]!

seqid: anInteger
	
	seqid := anInteger!

type
	
	^type ifNil: [0]!

type: anInteger
	
	type := anInteger!

name: aString
	
	name := aString!

name
	
	^name ifNil: ['']! !


!TCallMessage methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

type
	
	^1! !


!TProtocol methodsFor: 'writing' stamp: ' 31/10/16 08:42'!

writeMapEnd
	
	!

writeStructEnd
	
	!

writeMessageEnd
	
	!

writeSetEnd
	
	!

writeFieldBegin: aField
	
	!

writeMapBegin: aMap
	
	!

writeBool: aBool
	
	!

writeMessageBegin
	
	!

writeStructBegin: aStruct
	
	!

writeSetBegin: aSet
	
	!

writeListBegin: aList
	
	!

writeI16: i16
	
	!

writeI64: i64
	
	!

writeString: aString
	
	!

writeListEnd
	
	!

writeFieldStop
	
	!

writeI32: i32
	
	!

writeDouble: aFloat
	
	!

writeByte: aByte
	
	!

writeFieldEnd
	
	! !

!TProtocol methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

transport: aTransport
	
	transport := aTransport!

transport
	
	^transport! !

!TProtocol methodsFor: 'reading' stamp: ' 31/10/16 08:42'!

readStructBegin
	
	!

readMapEnd
	
	!

readMapBegin
	
	!

readMessageEnd
	
	!

readDouble
	
	!

readSetBegin
	
	!

readByte
	
	!

readSetEnd
	
	!

readSimpleType: aType
	
	aType = TType bool ifTrue: [^self readBool].
	aType = TType byte ifTrue: [^self readByte].
	aType = TType double ifTrue: [^self readDouble].
	aType = TType i16 ifTrue: [^self readI16].
	aType = TType i32 ifTrue: [^self readI32].
	aType = TType i64 ifTrue: [^self readI64].
	aType = TType list ifTrue: [^self readBool]!

readString
	
	!

readListBegin
	
	!

skip: aType
	
	aType = TType stop ifTrue: [^self].
	aType = TType bool ifTrue: [^self readBool].
	aType = TType byte ifTrue: [^self readByte].
	aType = TType i16 ifTrue: [^self readI16].
	aType = TType i32 ifTrue: [^self readI32].
	aType = TType i64 ifTrue: [^self readI64].
	aType = TType string ifTrue: [^self readString].
	aType = TType double ifTrue: [^self readDouble].
	aType = TType struct
		ifTrue:
			[| field |
			self readStructBegin.
			[(field := self readFieldBegin) type = TType stop]
				whileFalse:
					[self skip: field type.
					self readFieldEnd].
			^self readStructEnd].
	aType = TType map
		ifTrue:
			[| map |
			map := self readMapBegin.
			map size
				timesRepeat:
					[self skip: map keyType.
					self skip: map valueType].
			^self readMapEnd].
	aType = TType list
		ifTrue:
			[| list |
			list := self readListBegin.
			list size timesRepeat: [self skip: list elemType].
			^self readListEnd].
	aType = TType set
		ifTrue:
			[| set |
			set := self readSetBegin.
			set size timesRepeat: [self skip: set elemType].
			^self readSetEnd].
	self error: 'Unknown type'!

readI64
	
	!

readFieldEnd
	
	!

readStructEnd
	
	!

readI16
	
	!

readBool
	
	!

readFieldBegin
	
	!

readI32
	
	!

readMessageBegin
	
	!

readListEnd
	
	! !


!TBinaryProtocol methodsFor: 'writing' stamp: ' 31/10/16 08:42'!

writeMapBegin: aMap
	
	self
		writeByte: aMap keyType;
		writeByte: aMap valueType;
		writeI32: aMap size!

writeFieldBegin: aField
	
	self writeByte: aField type.
	self writeI16: aField id!

writeInt: val size: size
	
	1
		to: size
		do:
			[:n | self writeByte: ((val bitShift: (size negated + n) * 8) bitAnd: 16rFF)]!

writeBool: bool
	
	bool
		ifTrue: [self writeByte: 1]
		ifFalse: [self writeByte: 0]!

write: aString
	
	transport write: aString!

writeSetBegin: aSet
	
	self
		writeByte: aSet elemType;
		writeI32: aSet size!

writeListBegin: aList
	
	self
		writeByte: aList elemType;
		writeI32: aList size!

writeI16: i16
	
	self writeInt: i16 size: 2!

writeField: aField
	
	self
		writeByte: aField type;
		writeI16: aField id!

writeI64: i64
	
	self writeInt: i64 size: 8!

writeString: aString
	
	self
		writeI32: aString size;
		write: aString!

writeFieldStop
	
	self writeByte: TType stop!

writeI32: i32
	
	self writeInt: i32 size: 4!

writeByte: aNumber
	
	aNumber > 16rFF ifTrue: [TError signal: 'writeByte too big'].
	transport write: (Array with: aNumber)!

writeDouble: aDouble
	
	self
		writeI32: (aDouble basicAt: 1);
		writeI32: (aDouble basicAt: 2)!

writeMessageBegin: msg
	
	self
		writeI32: (self version1 bitOr: msg type);
		writeString: msg name;
		writeI32: msg seqid! !

!TBinaryProtocol methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

versionMask
	
	^16rFFFF0000!

version1
	
	^16r80010000! !

!TBinaryProtocol methodsFor: 'reading' stamp: ' 31/10/16 08:42'!

intFromByteArray: buf
	
	| vals |
	vals := Array new: buf size.
	1
		to: buf size
		do:
			[:n | 
			vals
				at: n
				put: ((buf at: n) bitShift: (buf size - n) * 8)].
	^vals sum!

readMapBegin
	
	^(TMap new)
		keyType: self readByte;
		valueType: self readByte;
		size: self readI32!

readString
	
	| sz |
	sz := self readI32.
	^sz > 0
		ifTrue: [(transport read: sz) asString]
		ifFalse: ['']!

readDouble
	
	| val |
	val := Float new: 2.
	^val
		basicAt: 1
			put: (self readRawInt: 4);
		basicAt: 2
			put: (self readRawInt: 4);
		yourself!

readSetBegin
	"element type, size"
	
	^(TSet new)
		elemType: self readByte;
		size: self readI32!

readByte
	
	^(self transport read: 1) first!

unsignedInt: val size: size
	
	^0 - (val - 1 bitXor: (2 raisedTo: size * 8) - 1)!

readListBegin
	
	^(TList new)
		elemType: self readByte;
		size: self readI32!

readInt: size
	
	| buf val |
	buf := transport read: size.
	val := self intFromByteArray: buf.
	^buf first > 16r7F
		ifTrue: [self unsignedInt: val size: size]
		ifFalse: [val]!

readI64
	
	^self readInt: 8!

readRawInt: size
	
	^self intFromByteArray: (transport read: size)!

readI16
	
	^self readInt: 2!

readBool
	
	^self readByte isZero not!

readFieldBegin
	
	| field |
	field := TField new type: self readByte.
	^field type = TType stop
		ifTrue: [field]
		ifFalse:
			[field
				id: self readI16;
				yourself]!

readI32
	
	^self readInt: 4!

readMessageBegin
	
	| version |
	version := self readI32.
	(version bitAnd: self versionMask) = self version1
		ifFalse: [TProtocolError signalWithCode: TProtocolError badVersion].
	^(TMessage new)
		type: (version bitAnd: 16r000000FF);
		name: self readString;
		seqid: self readI32! !


!TResult methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

exception
	
	^exception!

success: anObject
	
	success := anObject!

success
	
	^success!

exception: anError
	
	exception := anError! !


!TSizedObject methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

size: anInteger
	
	size := anInteger!

size
	
	^size ifNil: [0]! !


!TList methodsFor: 'accessing' stamp: ' 31/10/16 08:42'!

elemType: anInteger
	
	elemType := anInteger!

elemType
	
	^elemType ifNil: [TType stop]! !


!TMap methodsFor: 'accessing' stamp: ' 31/10/16 08:42'!

keyType
	
	^keyType ifNil: [TType stop]!

valueType
	
	^valueType ifNil: [TType stop]!

keyType: anInteger
	
	keyType := anInteger!

valueType: anInteger
	
	valueType := anInteger! !


!TSocket methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

read: size
	
	| data |
	[data := stream next: size.
	data isEmpty
		ifTrue:
			[TTransportError signal: 'Could not read ' , size asString , ' bytes'].
	^data]
		on: ConnectionClosed
		do: [TTransportClosedError signal]!

host: aString
	
	host := aString!

write: aCollection
	
	[stream nextPutAll: aCollection]
		on: ConnectionClosed
		do: [TTransportClosedError signal]!

close
	
	self isOpen ifTrue: [stream close]!

socketStream
	
	^Smalltalk
		at: #FastSocketStream
		ifAbsent: [SocketStream]!

isOpen
	
	^stream isNil not
		and: [stream socket isConnected]
		and: [stream socket isOtherEndClosed not]!

open
	
	stream := self connect!

flush
	
	stream flush!

port: anInteger
	
	port := anInteger!

connect
	
	^(self socketStream
		openConnectionToHost: (NetNameResolver addressForName: host)
		port: port)
		timeout: 180;
		binary;
		yourself! !


!TStruct methodsFor: 'accessing' stamp: ' 31/10/16 08:42'!

name: aString
	
	name := aString!

name
	
	^name! !


!TTransport methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

flush
	
	self subclassResponsibility!

read: anInteger
	
	self subclassResponsibility!

write: aString
	
	self subclassResponsibility!

close
	
	self subclassResponsibility!

readAll: anInteger
	
	^String new writeStream
		ifNotNil:
			[:str | 
			[str size < anInteger]
				whileTrue: [str nextPutAll: (self read: anInteger - str size)]]!

isOpen
	
	self subclassResponsibility!

open
	
	self subclassResponsibility! !


!TType class methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

bool
	
	^2!

string
	
	^11!

i16
	
	^6!

nameOf: aTypeCode
	
	self typeMap do: [:each | each second = aTypeCode ifTrue: [^each first]].
	^nil!

codeOf: aTypeName
	
	self typeMap do: [:each | each first = aTypeName ifTrue: [^each second]].
	^nil!

i32
	
	^8!

stop
	
	^0!

typeMap
	
	^#(#(#bool 2) #(#byte 3) #(#double 4) #(#i16 6) #(#i32 8) #(#i64 10) #(#list 15) #(#map 13) #(#set 15) #(#stop 0) #(#string 11) #(#struct 12) #(#void 1))!

struct
	
	^12!

i64
	
	^10!

map
	
	^13!

void
	
	^1!

double
	
	^4!

set
	
	^14!

list
	
	^15!

byte
	
	^3! !


!TError class methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

signalWithCode: anInteger
	
	(self new)
		code: anInteger;
		signal! !


!TError methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

code
	
	^code!

code: anInteger
	
	code := anInteger! !


!TProtocolError class methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

unknown
	
	^0!

invalidData
	
	^1!

negativeSize
	
	^2!

badVersion
	
	^4!

sizeLimit
	
	^3! !


!TClient class methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

binaryOnHost: aString port: anInteger
	
	| sock |
	sock := (TSocket new)
		host: aString;
		port: anInteger;
		open;
		yourself.
	^(self new)
		inProtocol: (TBinaryProtocol new transport: sock);
		yourself! !


!TClient methodsFor: 'as yet unclassified' stamp: ' 31/10/16 08:42'!

inProtocol: aProtocol
	
	iprot := aProtocol.
	oprot ifNil: [oprot := aProtocol]!

validateRemoteMessage: aMsg
	
	remoteSeqid
		ifNil: [remoteSeqid := aMsg seqid]
		ifNotNil:
			[remoteSeqid + 1 = aMsg seqid
				ifFalse:
					[TProtocolError
						signal:
							'Bad seqid: ' , aMsg seqid asString , '; wanted: ' , remoteSeqid asString].
			remoteSeqid := aMsg seqid]!

outProtocol: aProtocol
	
	oprot := aProtocol!

nextSeqid
	
	^seqid
		ifNil: [seqid := 0]
		ifNotNil: [seqid := seqid + 1]! !


!TField methodsFor: 'accessing' stamp: ' 31/10/16 08:42'!

id: anInteger
	
	id := anInteger!

name: anObject
	
	name := anObject!

name
	
	^name ifNil: ['']!

type
	
	^type ifNil: [TType stop]!

id
	
	^id ifNil: [0]!

type: anInteger
	
	type := anInteger! !

