require 'sinatra'
require "sinatra/reloader" if development?
require 'haml'
require 'sass'
require 'sinatra/simple-navigation'



get '/' do
	haml :index
end

get '/grid' do
  haml  :grid
end


get '/showcase' do
  haml  :showcase
end

get '/about' do
  haml  :about
end

get '/nested_menu' do
  haml  :nested_menu
end


get '/stylesheets/*' do
  content_type 'text/css', :charset => 'utf-8'
  content_type 'text/css'
  sass '../sass/'.concat(params[:splat].join.chomp('.css')).to_sym
end