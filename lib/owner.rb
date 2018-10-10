class Owner
  
  attr_reader :species
  attr_accessor :pets, :name, :fish, :dogs, :cats 

  
  def initialize(species)
    @name = name 
    @species = "human"
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
    self.pets[:dogs].each do |dog|
     dog.mood = "happy"
   end
  end
  
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    self.pets[:fish].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    @pets.clear 
  
  
end