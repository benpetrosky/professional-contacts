class Contact
  @@contacts = []

  define_method(:initialize) do |name, contact_info|
    @name = name
    @id = @@contacts.length().+(1)
    @contact_info = contact_info
  end
  define_method(:add_contact_info) do |contact_info|
    @contact_info.push(contact_info)
  end
  define_method(:name) do
    @name
  end
  define_method(:contact_info) do
    @contact_info
  end
  define_method(:save) do
    @@contacts.push(self)
  end
  define_singleton_method(:all) do
    @@contacts
  end
  define_singleton_method(:clear) do
    @@contacts = []
  end
  define_method(:id) do
    @id
  end
  define_singleton_method(:find) do |identification|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id().eql?(identification.to_i())
        found_contact = contact
      end
    end
    found_contact
  end
end
