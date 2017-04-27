require('rspec')
require('contacts')


# first name, last name, job title, company
describe(Contact) do
  before() do
    Contact.clear()
  end

  describe('#name') do
    it('returns the contact name') do
      test_contact = Contact.new("Ben", ["12345"], ["bp@mail.com"], ["1600 Pennsylvania Ave"])
      expect(test_contact.name()).to(eq("Ben"))
    end
  end
  describe('#numbers') do
    it('returns the contact name') do
      test_contact = Contact.new("Ben", ["12345"], ["bp@mail.com"], ["1600 Pennsylvania Ave"])
      expect(test_contact.numbers()).to(eq(["12345"]))
    end
  end
  describe('#emails') do
    it('returns the contact name') do
      test_contact = Contact.new("Ben", ["12345"], ["bp@mail.com"], ["1600 Pennsylvania Ave"])
      expect(test_contact.emails()).to(eq(["bp@mail.com"]))
    end
  end
  describe('#addresses') do
    it('returns the contact name') do
      test_contact = Contact.new("Ben", ["12345"], ["bp@mail.com"], ["1600 Pennsylvania Ave"])
      expect(test_contact.addresses()).to(eq(["1600 Pennsylvania Ave"]))
    end
  end
  describe(".all") do
    it('starts empty') do
      expect(Contact.all()).to(eq([]))
    end
  end
  describe('#id') do
    it('returns the contact id') do
      test_contact = Contact.new("Ben", ["12345"], ["bp@mail.com"], ["1600 Pennsylvania Ave"])
      expect(test_contact.id()).to(eq(1))
    end
  end
  describe('.find') do
    it('returns a contact with associated id') do
      test_contact = Contact.new("Ben", ["12345"], ["bp@mail.com"], ["1600 Pennsylvania Ave"])
      test_contact.save()
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end
end
