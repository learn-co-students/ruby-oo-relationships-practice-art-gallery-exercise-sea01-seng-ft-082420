class Gallery

  attr_reader :name, :city
  @@all=[]

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all 
    @@all 
  end 

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end 

  def artist 
    self.paintings.map {|painting| painting.artist}
  end 

  def artist_names
    self.artist.map {|artist| artist.name}
  end 

  def most_expensive_painting
    self.paintings.map {|painting| painting.price}.max
  end 

end

