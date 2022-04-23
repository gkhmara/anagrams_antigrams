require('pry')

class Anagrams_Antigrams
  attr_reader(:input1, :input2)

  def initialize()
    puts 'Please enter two words to check if they are anagrams or antigrams'
    @input1 = gets.chomp
    @input2 = gets.chomp
  end

  # def read_anagram(input1)
  #   input1
  # end

  def read_anagram(input1, input2)
    if input1.split('').sort.join === input2.split('').sort.join
      # puts "These words are anagrams."
      return "These words are anagrams."
    elsif
      puts "These words are not anagrams"
    end
  end

end