require_relative 'contact'
require 'sinatra'





get '/' do
  erb :index

end

get '/about' do
  @skills = ['shuffling', 'ilvl 380 holy priest', 'funny', 'can eat a lot']
  @interests = ['techno', 'women (+ points if youre japanese)', 'games']
  erb :about
end

get '/contacts' do

  @contacts = Contact.all
  erb :contacts
end




after do
  ActiveRecord::Base.connection.close
end
