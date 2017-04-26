require('rspec')
require('artist')

describe('Artist')  do
  before()  do
    Artist.clear()
  end
end

describe('.find') do
  it('returns an artist by its id number') do
    test_artist = Artist.new('AC/DC', 2000)
    test_artist.save()
    test_artist2 = Artist.new('Michael Jackson', 1999)
    test_artist2.save()
  end
end
