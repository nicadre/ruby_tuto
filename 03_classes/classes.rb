#!/usr/bin/env ruby

class Character #toujours par une MAJ             heritage avec " < MotherClass"
  attr_reader :name, :age #getter
  attr_writer :age #setter

  attr_accessor :name #getter and setter
  def initialize(name, age) #constructeur obligatoire
    @name = name
    @age = age   # @x est une variable de class
  end

#  def name
#    @name
#  end

#  def age=(age)
#    @age = age
#  end
end

toto = Character.new("toto", 42)
puts "#{toto.name.capitalize} #{toto.age}"
toto.age = 21
puts "#{toto.name.capitalize} #{toto.age}"
toto.name = "tutu"
puts "#{toto.name.capitalize} #{toto.age}"

puts toto.respond_to? "name"
puts toto.respond_to? "coucou"


#toto.coucou       coucou n'existe pas

toto.coucou if toto.respond_to? "coucou"

class Character
  def coucou
    puts "coucou"
  end
end
puts toto.respond_to? "coucou"

toto.coucou if toto.respond_to? "coucou"


class Character
  def ==(other)
    self.class === other and
      other.name == @name and
      other.age == @age
  end

  alias eql? ==
end

tutu = Character.new toto.name, toto.age
tata = Character.new "totu", 42

puts toto == tutu
puts toto.eql? tata
