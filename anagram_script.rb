#!/usr/bin/env ruby

require ('./lib/anagram_logic.rb')

user_input = Anagrams_Antigrams.new

puts user_input.read_anagram(user_input.input1, user_input.input2)
