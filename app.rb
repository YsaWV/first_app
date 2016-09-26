require 'sinatra'
require_relative "addition.rb"

get '/' do #create url
	erb :get_name #open file get_name.erb

end



post '/name' do  #create url for name
	name = params[:auser_name] #put :auser_name to browser, name is connected to /name. key :auser_name is saved by name.
  	redirect '/age?ausers_name=' + name #add name to browser, age?userc_name=name
  
end

get '/age' do #run get_age.erb file
	name = params[:ausers_name] #
	erb :get_age, :locals => {:name => name} # :locals is for <%= name %=> is used on the erb file by itself
	
end

# post '/age' do #create url /age
# 	name = params[:auser_name] 
# 	age = params[:auser_age]
# 	"greeeat! name #{name} and you are #{age}" #get name from params
# 	#redirect '/fav?ausers_name=' + name 


# end
# post '/age' do #create url /age
# 	name = params[:auser_name] 
# 	age = params[:auser_age]
# 	"greeeat! name #{name} and you are #{age}" #get name from params
# 	redirect '/fav?ausers_name=' + name 


# end
post '/age' do #create url /age
	name = params[:auser_name] 
	# age = params[:auser_age]
	# "greeeat! name #{name} and you are #{age}" #get name from params
	redirect '/fav?ausers_name=' + name 
end

get '/fav' do
	name = params[:auser_name]
	fav = params[:user_fav]
	erb :get_fav, :locals => {:fav => fav}

end

post '/fav' do
	name = params[:auser_name]
	fav = params[:fav_one]
	"greeeat! #{name} and you are #{fav}"

end



