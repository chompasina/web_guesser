require 'sinatra'
require 'sinatra/reloader'

x = rand(0..100)

get '/' do
  "The SECRET NUMBER is #{x}"
end
