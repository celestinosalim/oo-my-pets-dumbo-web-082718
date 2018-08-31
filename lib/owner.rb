require "pry"

class Owner

attr_accessor :name, :pets
@@all = []


def self.count
  @@all.length
end

def self.reset_all
  @@all = []
end

def initialize(name, pets={:fishes => [], :dogs => [], :cats => []})
  @name = name
  @@all << self
  @pets = pets
end

def self.all
  @@all
end

def species
self.name
end

def say_species
  return "I am a #{self.name}."
end


def buy_fish(fish_name)
fish_instance = Fish.new(fish_name)
@pets[:fishes] << fish_instance
end

def buy_cat(cat_name)
cat_instance = Cat.new(cat_name)
@pets[:cats] << cat_instance
end

def buy_dog(dog_name)
dog_instance = Dog.new(dog_name)
@pets[:dogs] << dog_instance
end

def walk_dogs
@pets[:dogs].each do |mood|
  mood.mood = "happy"
end
end



def play_with_cats
@pets[:cats].each do |mood|
  mood.mood = "happy"
end
end



def feed_fish
@pets[:fishes].each do |mood|
  mood.mood = "happy"
end
end

def sell_pets
  @pets.each do |key, pet|
    pet.each do |mood|
      mood.mood = "nervous"
    # binding.pry
    @pets = {}
  end
end
end

def list_pets
  return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end

end #class end
