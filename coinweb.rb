require 'sinatra'	#start web service
require_relative 'coinfunction.rb'
# require_relative 'coinfunc.rb'

get '/' do 
	erb :get_name

end

post '/users_name' do 
	name = params[:user_name]  # user_name matches get_name <input type ="text" name ="user_name">
	redirect '/change?users_name=' + name # users_name matches get_name <form metopd "post" action"/users_name>
end

get '/change' do 
	name = params[:users_name]
	erb :get_change , :locals =>{:name => name}
end
 

post '/change' do 
 	cents = params[:change] 
 	name = params[:name]
 	#{}"Hello #{name} you entered #{change}"
 		coins = coin_sorter(cents.to_i)
	"Well #{name}, you gave me #{cents} cents, and I can return that to you in #{coins}"
end