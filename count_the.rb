# Write a program that: 
#   asks the user to enter a sentence.
#   then finds the number of times 'the' appears in the given string
#   and finally prints, "'the' appeared x times", where x is an Integer

p "Enter a sentence:"
input = gets.chomp.gsub(",", "").gsub("-", "")
sentence = input.split()
p sentence
p "'the' appeared #{sentence.count("the")} times"