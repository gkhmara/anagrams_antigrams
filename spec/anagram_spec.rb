require('rspec')
require('anagram_logic')

describe Anagrams_Antigrams do

  describe '#is_word?' do

    it("should take in two inputs and check to see if they are words") do
      user_input = Anagrams_Antigrams.new("rnt", "fbt")
      expect(user_input.is_word?).to(eq(false))
    end

  end

  describe '#is_anagram?' do

    it("should take in two inputs and check to see if they are anagrams") do
      user_input = Anagrams_Antigrams.new("greg", "gerg")
      expect(user_input.is_anagram?).to(eq(true))
    end

    it("should take in two inputs and check to see if they are not anagrams") do
      user_input = Anagrams_Antigrams.new("hat", "bat")
      expect(user_input.is_anagram?).to(eq(false))
    end

    it("should test to see if two phrases are anagrams regardless of spaces or punctuation") do
      user_input = Anagrams_Antigrams.new("The Morse Code", "Here come dots!")
      expect(user_input.is_anagram?).to(eq(true))
    end
  
  end

  describe '#is_antigram?' do
    it("should take in two inputs and check to see if they are antigrams") do
      user_input = Anagrams_Antigrams.new("cat", "dog")
      expect(user_input.is_antigram?).to(eq(true))
    end

  end

end