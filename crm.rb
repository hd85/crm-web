require_relative 'rolodex'
require_relative 'contact'
require 'sinatra'

get '/' do
  @crm_app_name = "My CRM"
  erb :index
end

get '/contacts' do
  @contacts = []
  @contacts << Contact.new(1000, "Yehuda", "Katz", "yehuda@example.com", "Developer")
  @contacts << Contact.new(1001, "Mark", "Zuckerberg", "mark@facebook.com", "CEO")
  @contacts << Contact.new(1002, "Sergey", "Brin", "sergey@google.com", "Co-Founder")

  erb :contacts
end

get '/contacts/new' do
  "Add a contact"
end
