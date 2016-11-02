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
<body>server := STServer startOn: 9090.
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

<body package="SocketServer" selector="setup">setup
</methods>

<methods>
<class-id>STServer class</class-id> <category>accessing</category>

<body package="SocketServer" selector="default">default

<body package="SocketServer" selector="default:">default: aValue
</methods>

<methods>
<class-id>STServer class</class-id> <category>defaults</category>

<body package="SocketServer" selector="defaultPort">defaultPort
</methods>

<methods>
<class-id>STServer class</class-id> <category>instance creation</category>

<body package="SocketServer" selector="new">new
</methods>

<methods>
<class-id>STServer class</class-id> <category>events</category>

<body package="SocketServer" selector="update:with:from:">update: anAspect with: aValue from: aModel
</methods>

<methods>
<class-id>STServer class</class-id> <category>api</category>

<body package="SocketServer" selector="doStartup">doStartup

<body package="SocketServer" selector="startOn:">startOn: aPort

<body package="SocketServer" selector="start">start
</methods>


<methods>
<class-id>STServer</class-id> <category>initialize-release</category>

<body package="SocketServer" selector="initialize">initialize
</methods>

<methods>
<class-id>STServer</class-id> <category>accessing</category>

<body package="SocketServer" selector="defaultPriority">defaultPriority

<body package="SocketServer" selector="serviceHandler:">serviceHandler: aValue

<body package="SocketServer" selector="listeningSocket">listeningSocket

<body package="SocketServer" selector="serverProcess">serverProcess

<body package="SocketServer" selector="serviceHandler">serviceHandler

<body package="SocketServer" selector="isRunning">isRunning

<body package="SocketServer" selector="port:">port: aValue

<body package="SocketServer" selector="serverProcess:">serverProcess: aValue

<body package="SocketServer" selector="listeningSocket:">listeningSocket: aValue

<body package="SocketServer" selector="isRunning:">isRunning: aValue

<body package="SocketServer" selector="port">port

<body package="SocketServer" selector="defaultServiceHandler">defaultServiceHandler
</methods>

<methods>
<class-id>STServer</class-id> <category>api</category>

<body package="SocketServer" selector="start">start

<body package="SocketServer" selector="startOn:">startOn: aPort

<body package="SocketServer" selector="shutdown">shutdown
</methods>

<methods>
<class-id>STServer</class-id> <category>server</category>

<body package="SocketServer" selector="handleConnection:">handleConnection: aSocket 

<body package="SocketServer" selector="serverLoop">serverLoop
</methods>

<methods>
<class-id>STServer</class-id> <category>private</category>

<body package="SocketServer" selector="cleanup">cleanup</body>
</methods>


<methods>
<class-id>STClient class</class-id> <category>examples</category>

<body package="SocketServer" selector="exampleMessageToHost">exampleMessageToHost
</methods>

<methods>
<class-id>STClient class</class-id> <category>defaults</category>

<body package="SocketServer" selector="defaultPort">defaultPort
</methods>

<methods>
<class-id>STClient class</class-id> <category>instance creation</category>

<body package="SocketServer" selector="setupOn:forServer:">setupOn: port forServer: server

<body package="SocketServer" selector="sendMessage:to:on:">sendMessage: aMessage to: host on: port

<body package="SocketServer" selector="sendMessage:to:">sendMessage: aMessage to: host
</methods>


<methods>
<class-id>STClient</class-id> <category>initialize-release</category>

<body package="SocketServer" selector="sendMessage:to:on:">sendMessage: aMessage to: aHost on: aPort
</methods>

<methods>
<class-id>STClient</class-id> <category>accessing</category>

<body package="SocketServer" selector="answer:">answer: aValue

<body package="SocketServer" selector="socket">socket

<body package="SocketServer" selector="socket:">socket: aValue

<body package="SocketServer" selector="port:">port: aValue

<body package="SocketServer" selector="host">host

<body package="SocketServer" selector="port">port

<body package="SocketServer" selector="host:">host: aValue

<body package="SocketServer" selector="answer">answer
</methods>

<methods>
<class-id>STClient</class-id> <category>api</category>

<body package="SocketServer" selector="sendMessage:">sendMessage: aMessage

<body package="SocketServer" selector="setup">setup

<body package="SocketServer" selector="close">close
</methods>

<methods>
<class-id>STClient</class-id> <category>private</category>

<body package="SocketServer" selector="getSocketStream">getSocketStream
</methods>


<methods>
<class-id>STServiceHandler</class-id> <category>required-api</category>

<body package="SocketServer" selector="processInput:">processInput: aStream
</methods>

<methods>
<class-id>STServiceHandler</class-id> <category>api</category>

<body package="SocketServer" selector="serve:">serve: aSocket
</methods>

<methods>
<class-id>STServiceHandler</class-id> <category>private-comms</category>

<body package="SocketServer" selector="setupStreamOn:">setupStreamOn: aSocket

<body package="SocketServer" selector="returnResults:on:">returnResults: reply on: stream
</methods>


<methods>
<class-id>ExampleHandler</class-id> <category>required-api</category>

<body package="SocketServer" selector="processInput:">processInput: aStream
</methods>

<methods>
<class-id>ExampleHandler</class-id> <category>api</category>

<body package="SocketServer" selector="serve:">serve: aSocket
</methods>



</st-source>