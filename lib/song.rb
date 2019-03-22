class Song 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @all << self 
    @name = name 
  end 
  
  def self.all 
    @@all 
  end 
  
end 