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

get '/random-cat' do
  params[:name] = ["roger", "dennis", "pringles"].shuffle.pop
  erb :index, :locals => {:name => params[:name]}
end

get '/named-cat' do
  #params[:name] = ["roger", "dennis", "pringles"].shuffle.pop
  erb :index, :locals => {:name => params[:name]}
end
