class Owner
  
  attr_reader :species
  attr_accessor :pets, :name 
  
  @@all = []
  
  def initialize(species)
    @name = name 
    @species = "human"
    @@all << self 
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length 
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    puts "I am a #{@species}."
  end
  
  def buy_fish
    Owner.pets[:fishes] = Fish.new 
  end
  
  
end