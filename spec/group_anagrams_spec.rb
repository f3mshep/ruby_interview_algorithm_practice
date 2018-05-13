require "spec_helper"

describe "#group_anagrams" do
  it "takes an array of words, and returns a 2d array of like anagrams" do
    expect(group_anagrams( ["eat", "tea", "tan", "ate", "nat", "bat"])).to contain_exactly(["ate","eat","tea"], ["nat","tan"],["bat"])
  end
end