require "mockserver-client"
include MockServer
include MockServer::Model::DSL
client = MockServerClient.new('10.98.20.150',8081)                   #mockserver jar 
expectation = expectation do |expectation|
	expectation.request do |request|
		request.method = 'GET'
		request.path = '/api/games'
	end

	expectation.response do |response|
		response.status_code = 200
	end
end
client.register(expectation)