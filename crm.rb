require_relative 'contact.rb'
require 'sinatra'

get '/' do
  @contactlist = Contact.all
  @contactnum= Contact.all.size
  erb :index
end

# get '/contacts' do
#   @contactlist = Contact.all
#   @contactnum= Contact.all.size
#   erb :contacts
# end

get '/about' do
  erb :about
end

after do
  ActiveRecord::Base.connection.close
end
