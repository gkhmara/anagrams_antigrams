require('pry')

class Anagrams_Antigrams
  attr_reader(:input1, :input2)

  def initialize(word1, word2)
    @input1 = word1
    @input2 = word2
  end

  def is_word?
    if @input1.scan(/[aeiouAEIOU]/).count >= 1 && @input2.scan(/[aeiouAEIOU]/).count >= 1
      return true
    else
      return false
    end
  end

  def is_antigram?
    if @input1.scan(/[#{@input2}]/).count > 1
      return true
    else
      return false
    end
  end

  def is_anagram?
    if @input1.gsub(/[^a-zA-Z0-9\-]/,"").downcase.split('').sort.join === @input2.gsub(/[^a-zA-Z0-9\-]/,"").downcase.split('').sort.join
      return true
    else
      return false
    end
  end

end
