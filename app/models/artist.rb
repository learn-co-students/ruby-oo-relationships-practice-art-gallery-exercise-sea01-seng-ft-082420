class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def paintings 
    Painting.all.select {|painting| painting.artist == self}
  end 

  def galleries 
     self.paintings.map {|painting| painting.gallery}
  end 

  def self.total_experience
    self.all.map{|info| info.years_experience}.reduce(:+)
  end 

  def cities
    self.galleries.map {|gallery| gallery.city}
  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
  
  def self.most_prolific
    self.all.max_by {|artist| artist.paintings.length / artist.years_experience}
  end

end


