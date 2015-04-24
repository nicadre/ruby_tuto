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
