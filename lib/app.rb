require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "hello"
end

get '/secret' do
	"I smell"
end

get '/secret-a' do
	"I smell-a"
end

get '/cat' do
  cat_name = ["roger", "dennis", "pringles"].shuffle.pop
  erb :index, :locals => {:cat_name => cat_name}
end
