
class Owner 
 
  attr_reader :species, :name
  @@all = []

  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
 
  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    owner_cats = []
    Cat.all.each do |pet|
      if pet.owner == self
        owner_cats << pet
      end
    end
    owner_cats
  end
  
  def dogs
    owner_dogs = []
    Dog.all.each do |pet|
      if pet.owner == self
        owner_dogs << pet
      end
    end
    owner_dogs
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each do |dog|
      dog.mood = 'happy'
    end
  end
  
  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  
  def sell_pets
    cats.each do |cat, dog|
      cat.mood = "nervous"
      self.reset_all
    end
  
    dogs.each do |dog|
      dog.mood = "nervous
      self.reset_all
    end
  end

  def list_pets
    num_dogs = dogs.size
    num_cats = cats.size
    return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
    
  
end

