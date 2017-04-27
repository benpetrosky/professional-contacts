class Info
@@contact_info = []
  define_method(:initialize) do |setting, number, email, address|
    @setting = setting
    @number = number
    @email = email
    @address = address
  end
  define_method(:number) do
    @number
  end
  define_method(:email) do
    @email
  end
  define_method(:address) do
    @address
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
