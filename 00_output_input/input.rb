#!/usr/bin/env ruby

puts "Enter A"
a = gets.chomp
#a = STDIN.gets.chomp       gets prend par defaut sur ARGV, il faut donc preciser STDIN
puts "Enter B"
b = gets.chomp
#b = STDIN.gets.chomp
c = a.to_i + b.to_i  #to_i = int, to_s = string, to_a = array
puts c
