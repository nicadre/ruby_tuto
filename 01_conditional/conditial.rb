#!/usr/bin/env ruby

i = 0
puts "toto" if i == 0

if i == 0 #do
  puts "tutu"
end

unless i #do
  puts "ne va jamais s'afficher sauf si i != 0"
end

while i < 10
  puts "#{i}"
  i += 1        #pas de i++
end

i = 42;
until i < 35
  puts "#{i}"
  i -= 1        #pas de i--
end

2.times {
  puts "kikoo"
}

2.times do
  puts "another kikoo"
end

puts ""
for j in 0..5
  puts j
end

puts ""
(0..5).each do |k|
  puts k
end

puts ""
for i in 0..5
  if i < 2 then
    next
  end
  puts "#{i}"
end

#retry permet de recommencer toute la boucle de 0 (dans un for i in 0..5) par ex
