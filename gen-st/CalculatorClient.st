'Autogenerated by Thrift Compiler (0.9.3)

DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
'!

Object subclass: #CalculatorClient
  instanceVariableNames: ''
  classVariableNames: ''
  poolDictionaries: ''
  category: 'Generated-CalculatorClient'!

CalculatorClient class
	instanceVariableNames: 'constants enums'!

!CalculatorClient class methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
enums: anObject
    enums := anObject! !

!CalculatorClient class methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
enums
    ^ enums! !

!CalculatorClient class methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
constants: anObject
    constants := anObject! !

!CalculatorClient class methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
constants
    ^ constants! !

CalculatorClient enums: Dictionary new!
CalculatorClient constants: Dictionary new!

CalculatorClient enums at: 'Operation' put: [(Dictionary new 
	at: 'ADD' put: 1;
	at: 'SUBTRACT' put: 2;
	at: 'MULTIPLY' put: 3;
	at: 'DIVIDE' put: 4;
	yourself)]!

CalculatorClient enums at: 'Operation' put: [(Dictionary new 
	at: 'ADD' put: 1;
	at: 'SUBTRACT' put: 2;
	at: 'MULTIPLY' put: 3;
	at: 'DIVIDE' put: 4;
	yourself)]!

Object subclass: #Work
	instanceVariableNames: 'num1 num2 op comment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Generated-CalculatorClient'!

!Work methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
num1: anI32
    num1 := anI32! !

!Work methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
num1
    ^ num1! !

!Work methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
num2: anI32
    num2 := anI32! !

!Work methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
num2
    ^ num2! !

!Work methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
op: anOperation
    op := anOperation! !

!Work methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
op
    ^ op! !

!Work methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
comment: aString
    comment := aString! !

!Work methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
comment
    ^ comment! !


Error subclass: #InvalidOperation
	instanceVariableNames: 'whatOp why'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Generated-CalculatorClient'!

!InvalidOperation methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
whatOp: anI32
    whatOp := anI32! !

!InvalidOperation methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
whatOp
    ^ whatOp! !

!InvalidOperation methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
why: aString
    why := aString! !

!InvalidOperation methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
why
    ^ why! !


CalculatorClient constants at: 'INT32CONSTANT' put: [9853]!

CalculatorClient constants at: 'MAPCONSTANT' put: [(Dictionary new
            at: "hello" put: "world";
            at: "goodnight" put: "moon";
            yourself)]!

SharedServiceClient subclass: #CalculatorClient
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Generated-CalculatorClient'!

!CalculatorClient methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
ping
    ""
    self sendPing.
    ^ self recvPing success 
! !

!CalculatorClient methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
sendPing
    oprot writeMessageBegin:
      (TCallMessage new
        name: 'ping'; 
        seqid: self nextSeqid).
    oprot writeStructBegin: (TStruct new name: 'Ping_args').
    oprot writeFieldStop; writeStructEnd; writeMessageEnd.
    oprot transport flush! !

!CalculatorClient methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
recvPing
    | f msg res | 
    msg := oprot readMessageBegin.
    self validateRemoteMessage: msg.
    res := [|temp1 temp0|
      temp0 := TResult new.
      iprot readStructBegin.
      [temp1 := iprot readFieldBegin.
      temp1 type = TType stop] whileFalse: [|temp2|
        temp1 id = 0 ifTrue: [
          temp2 := true.
          temp0 success: iprot readVoid].
        temp2 ifNil: [iprot skip: temp1 type]].
      oprot readStructEnd.
      temp0] value.
    oprot readMessageEnd.
    oprot transport flush.
    res exception ifNotNil: [res exception signal].
    ^ res! !

!CalculatorClient methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
addNum1: num1 num2: num2
    "num1: i32, num2: i32"
    self sendAddNum1: num1 num2: num2.
    ^ self recvAdd success 
! !

!CalculatorClient methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
sendAddNum1: num1 num2: num2
    oprot writeMessageBegin:
      (TCallMessage new
        name: 'add'; 
        seqid: self nextSeqid).
    oprot writeStructBegin: (TStruct new name: 'Add_args').
    oprot writeFieldBegin: (TField new name: 'num1'; type: TType i32; id: 1).
    iprot writeI32: num1 asInteger.
    oprot writeFieldEnd.
    oprot writeFieldBegin: (TField new name: 'num2'; type: TType i32; id: 2).
    iprot writeI32: num2 asInteger.
    oprot writeFieldEnd.
    oprot writeFieldStop; writeStructEnd; writeMessageEnd.
    oprot transport flush! !

!CalculatorClient methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
recvAdd
    | f msg res | 
    msg := oprot readMessageBegin.
    self validateRemoteMessage: msg.
    res := [|temp4 temp3|
      temp3 := TResult new.
      iprot readStructBegin.
      [temp4 := iprot readFieldBegin.
      temp4 type = TType stop] whileFalse: [|temp5|
        temp4 id = 0 ifTrue: [
          temp5 := true.
          temp3 success: iprot readI32].
        temp5 ifNil: [iprot skip: temp4 type]].
      oprot readStructEnd.
      temp3] value.
    oprot readMessageEnd.
    oprot transport flush.
    res exception ifNotNil: [res exception signal].
    ^ res! !

!CalculatorClient methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
calculateLogid: logid w: w
    "logid: i32, w: Work"
    self sendCalculateLogid: logid w: w.
    ^ self recvCalculate success 
! !

!CalculatorClient methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
sendCalculateLogid: logid w: w
    oprot writeMessageBegin:
      (TCallMessage new
        name: 'calculate'; 
        seqid: self nextSeqid).
    oprot writeStructBegin: (TStruct new name: 'Calculate_args').
    oprot writeFieldBegin: (TField new name: 'logid'; type: TType i32; id: 1).
    iprot writeI32: logid asInteger.
    oprot writeFieldEnd.
    oprot writeFieldBegin: (TField new name: 'w'; type: TType struct; id: 2).
    [oprot writeStructBegin: (TStruct new name: 'Work').
      oprot writeFieldBegin: (TField new name: 'num1'; type: TType i32; id: 1).
      iprot writeI32: w num1 asInteger.
      oprot writeFieldEnd.
      oprot writeFieldBegin: (TField new name: 'num2'; type: TType i32; id: 2).
      iprot writeI32: w num2 asInteger.
      oprot writeFieldEnd.
      oprot writeFieldBegin: (TField new name: 'op'; type: TType i32; id: 3).
      iprot writeI32: w op.
      oprot writeFieldEnd.
      w comment ifNotNil: [
        oprot writeFieldBegin: (TField new name: 'comment'; type: TType string; id: 4).
        iprot writeString: w comment.
        oprot writeFieldEnd].
      oprot writeFieldStop; writeStructEnd] value.
    oprot writeFieldEnd.
    oprot writeFieldStop; writeStructEnd; writeMessageEnd.
    oprot transport flush! !

!CalculatorClient methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
recvCalculate
    | f msg res | 
    msg := oprot readMessageBegin.
    self validateRemoteMessage: msg.
    res := [|temp7 temp6|
      temp6 := TResult new.
      iprot readStructBegin.
      [temp7 := iprot readFieldBegin.
      temp7 type = TType stop] whileFalse: [|temp8|
        temp7 id = 0 ifTrue: [
          temp8 := true.
          temp6 success: iprot readI32].
        temp7 id = 1 ifTrue: [
          temp8 := true.
          temp6 exception: [|temp10 temp9|
            temp9 := InvalidOperation new.
            iprot readStructBegin.
            [temp10 := iprot readFieldBegin.
            temp10 type = TType stop] whileFalse: [|temp11|
              temp10 id = 1 ifTrue: [
                temp11 := true.
                temp9 whatOp: iprot readI32].
              temp10 id = 2 ifTrue: [
                temp11 := true.
                temp9 why: iprot readString].
              temp11 ifNil: [iprot skip: temp10 type]].
            oprot readStructEnd.
            temp9] value].
        temp8 ifNil: [iprot skip: temp7 type]].
      oprot readStructEnd.
      temp6] value.
    oprot readMessageEnd.
    oprot transport flush.
    res exception ifNotNil: [res exception signal].
    ^ res! !

!CalculatorClient methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
zip
    ""
    self sendZip.
! !

!CalculatorClient methodsFor: 'as yet uncategorized' stamp: 'thrift 11/01/2016 13:26'!
sendZip
    oprot writeMessageBegin:
      (TCallMessage new
        name: 'zip'; 
        seqid: self nextSeqid).
    oprot writeStructBegin: (TStruct new name: 'Zip_args').
    oprot writeFieldStop; writeStructEnd; writeMessageEnd.
    oprot transport flush! !

CalculatorClient enums keysAndValuesDo: [:k :v | CalculatorClient enums at: k put: v value].!
CalculatorClient constants keysAndValuesDo: [:k :v | CalculatorClient constants at: k put: v value].!