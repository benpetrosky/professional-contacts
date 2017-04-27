require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')

get('/') do
  @contacts = Contact.all()
  erb(:index)
end

post('/') do
  @contacts = Contact.all()
  name = params.fetch("name")
  numbers = params.fetch("numbers")
  emails = params.fetch("emails")
  addresses = params.fetch("addresses")
  Contact.new(name, numbers, emails, addresses).save()
  erb(:index)
end

get('/form') do
  erb(:form)
end
