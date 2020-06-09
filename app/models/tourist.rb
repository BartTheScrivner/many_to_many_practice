# put your Tourist model here

class Tourist
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|tourist| tourist.name == name}
  end

  def trips
    Trip.all.select do |trip|
      trip.tourist == self
    end
  end

  def landmarks
    # trips = Trip.all.select do |trip|
    #   trip.tourist == self
    # #  self.trips
    # end
    self.trips.map do |trip|
      trip.landmark 
    end
  end

  def visit_landmark(landmark)
    Trip.new(self, landmark)
  end

  def never_visited
    Landmark.all.select do |landmark|
      !self.landmarks.include?(landmark)
      # binding.pry
    end
  #   trips_not_visited  = Trip.all.select do |trip|
  #     trip.tourist != self
  #   end
  #   trips_not_visited.map do |trip|
  #     trip.landmark if !self.landmarks.include?(trip.landmark)
  #   end
  end
end