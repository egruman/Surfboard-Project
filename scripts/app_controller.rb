require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/' do    #after adding it directed you to a response page 
    #puts params #hash, value is the answer 
    Responder=Result.new
    name = params[:name]
    emo =params[:emotion]
    @answer =  Responder.response(name, emo)
   erb :respond
  end   
  
end