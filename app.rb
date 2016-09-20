require 'sinatra'

# get '/' do #roots of the url
# 	"Hello CRW!" 
# 	"how are you"
# 	"*******************************   ***** ***** **** *** <<<<<<<<<<<>>>>>>>>>>>>>>>>>>>> ************"
# end

get '/' do
	erb :get_name

end

# post '/uname' do
# 	tname = params[:auser_name]
#   "Hello #{tname} World"
# end


post '/uname' do
	uname = params[:auser_name]
  	redirect '/age?ausers_name=' + uname
end

# get '/age' do
# 	uname = params[:ausers_name]
# 	"well hello #{uname}"
# end

get '/age' do
	uname = params[:ausers_name]
	erb :get_age, :locals => {:uname => uname}
end