require 'rubygems'
require 'sinatra'
require "sinatra/namespace"
require 'anystyle'

# Endpoints
get '/' do
  "Hello world! try /api/v1/parse endpoint."
end


namespace '/api/v1' do
    get '/parse' do
        text = params['text']
        if !text
            status 401
            "text param required!"
        else
            result = AnyStyle.parse(text)
            content_type :json
            result.to_json
        end    
    end
end