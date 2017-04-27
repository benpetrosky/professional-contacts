class Info
@@contact_info = []
attr_reader(:setting, :number, :email, :address)
  define_method(:initialize) do |attributes|
    @setting = attributes.fetch(:setting)
    @number = attributes.fetch(:number)
    @email = attributes.fetch(:email)
    @address = attributes.fetch(:address)
  end

  define_method(:save) do
    @@contact_info.push(self)
  end
  define_singleton_method(:clear) do
    @@contact_info = []
  end
  define_singleton_method(:all) do
    @@contact_info
  end
end
