require 'sinatra'
require 'sinatra/reloader'


SECRET_NUMBER = rand(100)

get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {:number => SECRET_NUMBER, :message => message}
end

def check_guess(guess)
  if guess.to_i > SECRET_NUMBER + 5
    message = "Way too high!"
  elsif guess.to_i > SECRET_NUMBER
    message = "Too high!"
  elsif guess.to_i < SECRET_NUMBER - 5
    message = "Way too low!"
  elsif guess.to_i < SECRET_NUMBER
    message = "Too low!"
  else
    message = "The secret number was #{SECRET_NUMBER}. You got it right!"
  end
end
