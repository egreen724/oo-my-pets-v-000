class Owner
  
  attr_reader :species
  attr_accessor :pets, :name, :fish, :dogs, :cats 
  
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
    return "I am a #{@species}."
  end
  
  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name) 
  end
  
  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    Dog.mood = "happy"
  end
  
  
  
end