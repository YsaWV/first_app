require 'sinatra'
require_relative "addition.rb"

get '/' do #create url
	erb :get_name #open file get_name.erb

end



post '/name' do  #create url for name
	name = params[:auser_name] #put :auser_name to browser, name is connected to /name. key :auser_name is saved by name.
  	redirect '/age?auser_name=' + name #add name to browser, age?userc_name=name
  
end

get '/age' do #run get_age.erb file
	name = params[:auser_name] #
	erb :get_age, :locals => {:name => name} # :locals is for <%= name %=> is used on the erb file by itself
	
end


post '/age' do #create url /age
	age = params[:user_age]
	name = params[:auser_name] 
	#"greeeat! name #{name} and you are #{age}" #get name from params
	redirect '/fav?auser_name=' + name + "&user_age=" + age
end

get '/fav' do
	age = params[:user_age]
	name = params[:auser_name]
	
	#fav = params[:user_fav]
	erb :get_fav, :locals => {:name => name, :age => age}

end

post '/fav' do
	name = params[:auser_name]
	age = params[:user_age]
	fav1 = params[:fav_one].to_i
	fav2 = params[:fav_two].to_i
	fav3 = params[:fav_three].to_i
	sum = addition(fav1,fav2,fav3) 

	#"greeeat! #{age} and you are #{fav1},#{fav2},#{fav3} is equal to #{sum} "
	
	"your age #{age} is Greater than #{sum} the sum of your favorite numbers are: #{fav1},#{fav2},#{fav3}" if age.to_i >= sum.to_i
	

	#{}"your age #{age} is Less than #{sum} the sum of your favorite numbers are: #{fav1},#{fav2},#{fav3}" if age.to_i < sum.to_i
	
#<input type = "text" name = "total" value = <%= total %>>
end



