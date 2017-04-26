class Cd
  @@cd_array = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@cd_array.length(). + (1)
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@cd_array
  end

  define_singleton_method(:clear) do
    @@cd_array = []
  end

  define_method(:save) do
    @@cd_array.push(self)
  end

  define_singleton_method(:find) do |id|
     found_cd = nil
     @@cd_array.each() do |cd|
       if cd.id() == id.to_i
         found_cd = cd
       end
     end
     found_cd
   end


  # define_method(:add_cd) do
  #   @cd_array.push(cd)
  # end
end
