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
	"<img src='http://f.cl.ly/items/0k0v3e2X3l2f3i1n1Y19/Screen%20Shot%202013-09-10%20at%2011.32.00.png'  style='border-style: dashed; border-color: red;'/>"

end