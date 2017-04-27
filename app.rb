require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')
require('./lib/contact_info')

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
  contact_info = Info.new('first', numbers, emails, addresses)
  Contact.new(name, contact_info).save()
  erb(:index)
end
get ('/contact_info/:id') do
  @contact = Contact.find(params.fetch("id").to_i)
  erb(:contact_info)
end

get('/form') do
  erb(:form)
end
