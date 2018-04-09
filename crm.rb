require_relative 'contact.rb'
require 'sinatra'

get '/' do
  erb :index
end

get '/contacts' do
  @contactlist = Contact.all
  erb :contacts
end



after do
  ActiveRecord::Base.connection.close
end
