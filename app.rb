
require 'sinatra'
require "sinatra/reloader" if development?
require 'haml'
require 'sass'


get '/' do
	haml :index
end

get '/grid' do
  haml  :grid
end

get '/stylesheets/*' do
  content_type 'text/css', :charset => 'utf-8'
  content_type 'text/css'
  sass '../stylesheets/'.concat(params[:splat].join.chomp('.css')).to_sym
end