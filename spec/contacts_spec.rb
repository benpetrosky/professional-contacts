require('rspec')
require('contacts')
require('contact_info')


# first name, last name, job title, company
describe(Contact) do
  before() do
    Contact.clear()
  end

  describe('#name') do
    it('returns the contact name') do
      test_contact = Contact.new("Ben", {:number => "12345", :email => "bp@mail.com", :address => "1600 Pennsylvania Ave"})
      expect(test_contact.name()).to(eq("Ben"))
    end
  end
  describe('#number') do
    it('returns the contact name') do
      test_info = Info.new({:setting => 'first', :number => "12345", :email => "bp@mail.com", :address => "1600 Pennsylvania Ave"})
      test_contact = Contact.new("Ben", test_info)
      expect(test_contact.contact_info().number()).to(eq("12345"))
    end
  end
  describe('#email') do
    it('returns the contact name') do
      test_info = Info.new({:setting => 'first', :number => "12345", :email => "bp@mail.com", :address => "1600 Pennsylvania Ave"})
      test_contact = Contact.new("Ben", test_info)

      expect(test_contact.contact_info().email()).to(eq("bp@mail.com"))
    end
  end
  # describe('#address') do
  #   it('returns the contact name') do
  #     test_info = Info.new({:setting => 'first', :number => "12345", :email => "bp@mail.com", :address => "1600 Pennsylvania Ave"})
  #     test_contact = Contact.new("Ben", test_info)
  #     expect(test_contact.address()).to(eq("1600 Pennsylvania Ave"))
  #   end
  # end
  describe(".all") do
    it('starts empty') do
      expect(Contact.all()).to(eq([]))
    end
  end
  describe('#id') do
    it('returns the contact id') do
      test_contact = Contact.new("Ben", {:number => "12345", :email => "bp@mail.com", :address => "1600 Pennsylvania Ave"})
      expect(test_contact.id()).to(eq(1))
    end
  end
  describe('.find') do
    it('returns a contact with associated id') do
      test_contact = Contact.new("Ben", {:number => "12345", :email => "bp@mail.com", :address => "1600 Pennsylvania Ave"})
      test_contact.save()
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end
end
