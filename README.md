# MockServerTest
User MockServer test

1 Start mock server 

java -jar mockserver-netty-3.10.4-jar-with-dependencies.jar -serverPort 8081

ruby mock-server.rb

Open the browser and access the mock server url

2 Start mock server as proxy

java -jar mockserver-netty-3.10.4-jar-with-dependencies.jar -proxyPort 8081 -proxyRemotePort 8081 -proxyRemoteHost ***

Open the browser and access the mock server url which will redirect to the real server
