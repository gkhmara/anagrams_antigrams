require('rspec')
require('anagram_logic')

describe Anagrams_Antigrams do
  describe '#read_anagram' do

    it("should take in two inputs and check to see if they are anagrams") do
      user_input = Anagrams_Antigrams.new
      expect(user_input.read_anagram("greg", "greg")).to(eq("These words are anagrams."))
    end

    it("should take in two input and check to see if they are anagrams") do
      user_input = Anagrams_Antigrams.new
      expect(user_input.read_anagram("hat", "bat")).to(eq("These words are not anagrams."))
    end

    it("should return an error if one of the inputs doesn't contain a vowel") do
      user_input = Anagrams_Antigrams.new
      expect(user_input.read_anagram("thd", "plmn")).to(eq("One of your inputs is not a word. Please try again."))
    end

    it("should return an error if both inputs have no matching letters") do
      user_input = Anagrams_Antigrams.new
      expect(user_input.read_anagram("greg", "hat")).to(eq("These words have no letter matches and are antigrams."))
    end

  end
end