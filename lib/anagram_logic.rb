require('pry')

class Anagrams_Antigrams
  attr_reader(:input1, :input2)

  def initialize()
    puts 'Please enter two words to check if they are anagrams or antigrams'
    @input1 = gets.chomp
    @input2 = gets.chomp
  end

  def read_anagram(input1, input2)
    if input1.scan(/[aeiouAEIOU]/).count >= 1 && input2.scan(/[aeiouAEIOU]/).count >= 1
      if input1.downcase.split('').sort.join === input2.downcase.split('').sort.join
        return "These words are anagrams."
      else
        return "These words are not anagrams."
      end
    else
      return "One of your inputs is not a word. Please try again."
    end
  end


  # def read_anagram(input1, input2)
  #   if input1.downcase.split('').sort.join === input2.downcase.split('').sort.join
  #     return "These words are anagrams."
  #   else
  #     return "These words are not anagrams."
  #   end
  # end

  # def vowel_checker(input1, input2)
  #   if input1.scan(/[aeiouAEIOU]/).count >= 1 && input2.scan(/[aeiouAEIOU]/).count >= 1
  #     puts "vowel"
  #   else
  #     puts "no vowel"
  #   end
  # end

end