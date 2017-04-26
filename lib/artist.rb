class Artist
  @@artists = []

  define_method(:initialize) do |title, year|
    @title = title
    @year = year
    @id = @@artists.length() + 1
  end

  define_method(:id)  do
    @id
  end

  define_method(:title) do
    @title
  end

  define_method(:year)  do
    @year
  end

  define_singleton_method(:all) do
    @@artists
  end

  define_method(:save)  do
    @@artists.push(self)
  end

  define_singleton_method(:clear) do
    @@artists = []
  end

  define_singleton_method(:find) do |id|
  found_artists = nil
  @@artists.each() do |artist|
    if artists.id() == id.to_i()
      found_artists = artists
    end
  end
    found_artists
  end
end
