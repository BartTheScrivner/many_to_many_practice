# put your Landmark model here
class Landmark
attr_reader :name, :city
@@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end
end