#!/usr/bin/env ruby

require ('./lib/anagram_logic.rb')

user_input = Anagrams_Antigrams.new
# puts user_input.input1
# puts user_input.input2
# puts user_input.vowel_checker('GREG', 'HAT')
# puts user_input.read_anagram('greg')


puts user_input.read_anagram(user_input.input1, user_input.input2)