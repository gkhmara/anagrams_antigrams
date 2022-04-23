require('rspec')
require('anagram_logic')

describe Anagrams_Antigrams do
  describe '#read_anagram' do

    # it("should take in two inputs and check to see if they are anagrams") do
    #   user_input = Anagrams_Antigrams.new
    #   expect(user_input.read_anagram("greg")).to(eq("greg"))
    # end

    it("should take in two inputs and check to see if they are anagrams") do
      user_input = Anagrams_Antigrams.new
      expect(user_input.read_anagram("greg", "greg")).to(eq("These words are anagrams."))
    end
  end
end