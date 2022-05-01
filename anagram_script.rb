#!/usr/bin/env ruby

require ('./lib/anagram_logic.rb')

puts 'Please enter two words or sentences to check if they are anagrams or antigrams'
word1 = gets.chomp
word2 = gets.chomp
user_input = Anagrams_Antigrams.new(word1, word2)

if user_input.is_word?
  if user_input.is_antigram?
    if user_input.is_anagram?
      puts "These inputs are anagrams"
    else
      puts "These inputs are not anagrams"
    end
  else
    puts "These inputs have no letter matches and are antigrams"
  end
else
  puts "One of your inputs is not a word. Please try again."
end