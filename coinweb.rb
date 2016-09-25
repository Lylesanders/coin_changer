require 'sinatra'	#start web service
require_relative 'coinfunction.rb'


get '/' do
	erb :get_name
end

post '/users_name' do 
  name = params[:user_name]
  "Hello #{name}"
end