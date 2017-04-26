require('rspec')
require('cd')
require('artist')



describe(Cd) do
  before() do
    Cd.clear()
  end
end
  describe('#name') do
    it("returns the name of the cd") do
      test_cd = Cd.new("Thriller")
      expect(test_cd.name()).to(eq("Thriller"))
    end
  end

  describe('#id') do
    it("returns the id of the cd") do
      test_cd = Cd.new("Thriller")
      expect(test_cd.id()).to(eq(1))
    end
  end

  describe('#all') do
    it("ensures the cd_array is empty") do
      expect(Cd.all()).to(eq([]))
    end
  end

  describe('#clear') do
    it("clears the array") do
      Cd.new("Thriller").save()
      Cd.clear()
      expect(Cd.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves the cd") do
      test_cd = Cd.new("Thriller")
      test_cd.save()
      expect(Cd.all()).to(eq([test_cd]))
    end
  end
   
  describe('#find') do
    it("returns the cd based on its id") do
      test_cd = Cd.new("Thriller")
      test_cd.save()
      test_cd2 = Cd.new("Back in Black")
      test_cd2.save()
      expect(Cd.find(test_cd.id())).to(eq(test_cd))
    end
  end
