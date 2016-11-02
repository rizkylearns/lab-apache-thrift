<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks®, 7.9.1 of 18 October 2012 on 2 November 2016 at 11:24:57 AM</time-stamp>


<component-created>
<name>SocketServer</name> <type>package</type>
</component-created><!-- Package SocketServer* -->


<component-property>
<name>SocketServer</name> <type>package</type>
<property>parcelName</property> <value>'SocketServer'</value>
</component-property>

<component-property>
<name>SocketServer</name> <type>package</type>
<property>packageName</property> <value>'SocketServer'</value>
</component-property>

<component-property>
<name>SocketServer</name> <type>package</type>
<property>notice</property> <value>'Copyright © 2002 Cincom Systems, Inc.  All Rights Reserved.'</value>
</component-property>

<component-property>
<name>SocketServer</name> <type>package</type>
<property>comment</property> <value>'this package implements a simple example client/server setup using sockets'</value>
</component-property>

<component-property>
<name>SocketServer</name> <type>package</type>
<property>version</property> <value>'7'</value>
</component-property>

<class>
<name>STServiceHandler</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>As yet unclassified</category>
<attributes>
<package>SocketServer</package>
</attributes>
</class>

<class>
<name>ExampleHandler</name>
<environment>Smalltalk</environment>
<super>STServiceHandler</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>handler </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>As yet unclassified</category>
<attributes>
<package>SocketServer</package>
</attributes>
</class>

<comment>
<class-id>ExampleHandler</class-id>
<body>server := STServer startOn: 9090.server shutdownreadMessageBegin	readStructBegin		readFieldBegin			while field type &lt;&gt; TType stop				if id = 0, TResult new success: protocol readI32				else if id = 1,					readStructBegin, readFieldBegin, 						InvalidOperationException whatOp					readFieldEnd, readStructEnd				else if id = 2, 					readStructBegin, readFieldBegin,						InvalidOperationException why					readFieldEnd, readStructEnd				else skip field id		readFieldEnd	readStructEndreadMessageEnd</body>
</comment>

<class>
<name>STServer</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>listeningSocket port serverProcess isRunning serviceHandler </inst-vars>
<class-inst-vars>default </class-inst-vars>
<imports></imports>
<category>As yet unclassified</category>
<attributes>
<package>SocketServer</package>
</attributes>
</class>

<class>
<name>STClient</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>socket port host answer stream </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>As yet unclassified</category>
<attributes>
<package>SocketServer</package>
</attributes>
</class>

<methods>
<class-id>STServer class</class-id> <category>setup</category>

<body package="SocketServer" selector="setup">setup	ObjectMemory addDependent: self.</body>
</methods>

<methods>
<class-id>STServer class</class-id> <category>accessing</category>

<body package="SocketServer" selector="default">default	^default</body>

<body package="SocketServer" selector="default:">default: aValue	default := aValue</body>
</methods>

<methods>
<class-id>STServer class</class-id> <category>defaults</category>

<body package="SocketServer" selector="defaultPort">defaultPort	^6008</body>
</methods>

<methods>
<class-id>STServer class</class-id> <category>instance creation</category>

<body package="SocketServer" selector="new">new	^super new initialize</body>
</methods>

<methods>
<class-id>STServer class</class-id> <category>events</category>

<body package="SocketServer" selector="update:with:from:">update: anAspect with: aValue from: aModel	anAspect == #returnFromSnapshot		ifTrue: [self doStartup]</body>
</methods>

<methods>
<class-id>STServer class</class-id> <category>api</category>

<body package="SocketServer" selector="doStartup">doStartup	| commandLine port |	commandLine := CEnvironment commandLine.	commandLine &lt; 3		ifTrue: [port := self defaultPort]		ifFalse: [port := (commandLine at: 3) asNumber max: self defaultPort].	self default: (self startOn: port)</body>

<body package="SocketServer" selector="startOn:">startOn: aPort	^self new startOn: aPort</body>

<body package="SocketServer" selector="start">start	^self new start</body>
</methods>


<methods>
<class-id>STServer</class-id> <category>initialize-release</category>

<body package="SocketServer" selector="initialize">initialize	self port: self class defaultPort.	self isRunning: false.	self serviceHandler: self defaultServiceHandler new</body>
</methods>

<methods>
<class-id>STServer</class-id> <category>accessing</category>

<body package="SocketServer" selector="defaultPriority">defaultPriority^Processor userInterruptPriority - 2</body>

<body package="SocketServer" selector="serviceHandler:">serviceHandler: aValue	serviceHandler := aValue</body>

<body package="SocketServer" selector="listeningSocket">listeningSocket	^listeningSocket</body>

<body package="SocketServer" selector="serverProcess">serverProcess	^serverProcess</body>

<body package="SocketServer" selector="serviceHandler">serviceHandler	^serviceHandler</body>

<body package="SocketServer" selector="isRunning">isRunning	^isRunning</body>

<body package="SocketServer" selector="port:">port: aValue	port := aValue</body>

<body package="SocketServer" selector="serverProcess:">serverProcess: aValue	serverProcess := aValue</body>

<body package="SocketServer" selector="listeningSocket:">listeningSocket: aValue	listeningSocket := aValue</body>

<body package="SocketServer" selector="isRunning:">isRunning: aValue	isRunning := aValue</body>

<body package="SocketServer" selector="port">port	^port</body>

<body package="SocketServer" selector="defaultServiceHandler">defaultServiceHandler	^ExampleHandler</body>
</methods>

<methods>
<class-id>STServer</class-id> <category>api</category>

<body package="SocketServer" selector="start">start	self isRunning ifTrue: [^self].	Transcript show: 'Starting STServer on port: ' , self port printString; cr.	self listeningSocket: (SocketAccessor newTCPserverAtPort: self port).	listeningSocket listenFor: 5.	self isRunning: true.	self serverProcess: ([[self serverLoop]			valueOnUnwindDo: [self cleanup]]			forkAt: Processor userInterruptPriority)</body>

<body package="SocketServer" selector="startOn:">startOn: aPort	self port: aPort.	self start</body>

<body package="SocketServer" selector="shutdown">shutdown	self listeningSocket close.	self listeningSocket: nil.	self isRunning: false.	Transcript show: 'STServer stopped on port: ', self port printString; cr</body>
</methods>

<methods>
<class-id>STServer</class-id> <category>server</category>

<body package="SocketServer" selector="handleConnection:">handleConnection: aSocket 	"fork off the service handler so that the listener doesn't tie up 	further processing"	[ 	[[aSocket readWait.	self serviceHandler serve: aSocket. aSocket isActive]		valueOnUnwindDo: [aSocket close. false]] whileTrue ] fork</body>

<body package="SocketServer" selector="serverLoop">serverLoop"Server will continue to listen while socket is active.   When a connection is made, the ServiceHandler handles the connection"	[listeningSocket isActive]  		whileTrue: [self handleConnection: listeningSocket accept.					Processor activeProcess yield]</body>
</methods>

<methods>
<class-id>STServer</class-id> <category>private</category>

<body package="SocketServer" selector="cleanup">cleanup</body>
</methods>


<methods>
<class-id>STClient class</class-id> <category>examples</category>

<body package="SocketServer" selector="exampleMessageToHost">exampleMessageToHost	"STClient exampleMessageToHost"	| answer client |	client := self sendMessage: 'This is a short message from the client'  to: 'victoria'.	answer := client answer.	Transcript show: 'Answer: &lt;', answer, '&gt;'; cr</body>
</methods>

<methods>
<class-id>STClient class</class-id> <category>defaults</category>

<body package="SocketServer" selector="defaultPort">defaultPort	^6008</body>
</methods>

<methods>
<class-id>STClient class</class-id> <category>instance creation</category>

<body package="SocketServer" selector="setupOn:forServer:">setupOn: port forServer: server	| client |	client := self new		host: server;		port: port.	^client setup.</body>

<body package="SocketServer" selector="sendMessage:to:on:">sendMessage: aMessage to: host on: port	^self new sendMessage: aMessage to: host on: port</body>

<body package="SocketServer" selector="sendMessage:to:">sendMessage: aMessage to: host	^self new sendMessage: aMessage to: host on: self defaultPort</body>
</methods>


<methods>
<class-id>STClient</class-id> <category>initialize-release</category>

<body package="SocketServer" selector="sendMessage:to:on:">sendMessage: aMessage to: aHost on: aPort	self host: aHost.	self port: aPort.	self socket: (SocketAccessor newTCPclientToHost: host port: self port).	stream := self getSocketStream.	stream nextPutAll: aMessage.	stream nextPut: $^.	self answer: (stream upTo: $^).	stream close</body>
</methods>

<methods>
<class-id>STClient</class-id> <category>accessing</category>

<body package="SocketServer" selector="answer:">answer: aValue	answer := aValue</body>

<body package="SocketServer" selector="socket">socket	^socket</body>

<body package="SocketServer" selector="socket:">socket: aValue	socket := aValue</body>

<body package="SocketServer" selector="port:">port: aValue	port := aValue</body>

<body package="SocketServer" selector="host">host	^host</body>

<body package="SocketServer" selector="port">port	^port</body>

<body package="SocketServer" selector="host:">host: aValue	host := aValue</body>

<body package="SocketServer" selector="answer">answer	^answer</body>
</methods>

<methods>
<class-id>STClient</class-id> <category>api</category>

<body package="SocketServer" selector="sendMessage:">sendMessage: aMessage	stream nextPutAll: aMessage.	stream nextPut: $^.	self answer: (stream upTo: $^).</body>

<body package="SocketServer" selector="setup">setup	self socket: (SocketAccessor newTCPclientToHost: self host port: self port).	stream := self getSocketStream.</body>

<body package="SocketServer" selector="close">close	stream close</body>
</methods>

<methods>
<class-id>STClient</class-id> <category>private</category>

<body package="SocketServer" selector="getSocketStream">getSocketStream	| conn |	conn := ExternalConnection new				input: self socket;				output: self socket.	^conn readAppendStream.</body>
</methods>


<methods>
<class-id>STServiceHandler</class-id> <category>required-api</category>

<body package="SocketServer" selector="processInput:">processInput: aStream	"subclasses must override this method in order to handle requests from	clients"	^self subclassResponsibility</body>
</methods>

<methods>
<class-id>STServiceHandler</class-id> <category>api</category>

<body package="SocketServer" selector="serve:">serve: aSocket	| stream reply |	stream := self setupStreamOn: aSocket.	stream binary.	"yield so that other processes at this level can get a chance	at the processor"	Processor activeProcess yield.	reply := self processInput: stream.	self returnResults: reply on: stream</body>
</methods>

<methods>
<class-id>STServiceHandler</class-id> <category>private-comms</category>

<body package="SocketServer" selector="setupStreamOn:">setupStreamOn: aSocket	| connection stream |	connection := ExternalConnection new		input: aSocket;		output: aSocket.	stream := connection readAppendStream.	"Since the server and client might be on different	operating systems, choose a neutral line end convention."	stream lineEndTransparent.	^stream</body>

<body package="SocketServer" selector="returnResults:on:">returnResults: reply on: stream	"default is to merely slap back the result of #processInput"	stream nextPutAll: reply.	stream commit</body>
</methods>


<methods>
<class-id>ExampleHandler</class-id> <category>required-api</category>

<body package="SocketServer" selector="processInput:">processInput: aStream	| message |	message := handler read.	handler writeDumbMessageNamed: message name.	handler protocol transport flush.</body>
</methods>

<methods>
<class-id>ExampleHandler</class-id> <category>api</category>

<body package="SocketServer" selector="serve:">serve: aSocket	| stream tProtocol |	stream := self setupStreamOn: aSocket.	stream binary.	tProtocol := (TBinaryProtocol new transport: ((TSocket new) privateStream: stream; yourself)).	handler := TProtocolHandler for: tProtocol.	"yield so that other processes at this level can get a chance	at the processor"	Processor activeProcess yield.	[		self processInput: stream.		aSocket isActive	] whileTrue.</body>
</methods>



</st-source>
