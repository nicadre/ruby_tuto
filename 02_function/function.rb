#!/usr/bin/env ruby

def toto #declaration de toto(void)
  puts "toto"
end

def tutu(arg)
  puts "tutu #{arg}"
end

def tata(arg = "tata")
  puts "tata #{arg}"
end

def add_one(i)
  i + 1 # une fonction return automatiquement la valeur de la derniere ligne
end

def sub_one(i)
  return i - 1 #pour faire un "vrai" return ...
end

toto # appel de toto
#tutu #Appel de tutu sans arguments (va fail)

tutu 42 # tutu aavec un int
tutu "coucou" #tutu avec un string
tata "coucou"
tata

# les parenthes sont implicites, il faut les rajouter si tu as des fonctions imbriquer

i = add_one 41

puts i
i = sub_one 43
puts i
