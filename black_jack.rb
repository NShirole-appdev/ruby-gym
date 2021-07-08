# Write a program to play a variety of BlackJack.
# The program should ask the user to input two numbers separated by a space, and it should print their sum.
# 
# Here's the catch: 
#  if the sum is greater than 21, return 0, unless one of the numbers is 11. 
#  In such a case, the 11 should be 'converted' to a 1 to prevent the sum from being exceeded.
# 
# For example, given a 11 and 13 as input, the 11 should be 'converted' into a 1 so the total sum will be 14.

p "Enter two number separated by spaces:"
cards = gets.chomp
twocards = cards.split()
integer1 = twocards[0].to_i
integer2 = twocards[1].to_i
blackjacksum = integer1 + integer2
iseleven = (integer1 == 11 || integer2 == 11)
if iseleven
    if blackjacksum < 21
        p blackjacksum
    else
        converted = blackjacksum - 10
        p converted
    end
elsif blackjacksum < 21
    p blackjacksum
else
    p 0
end