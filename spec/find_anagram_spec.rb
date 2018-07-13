require "spec_helper"

describe "#find_anagram" do
  it "returns the indices of all anagrams in string" do
    expect(find_anagram("abab", "ab")).to contain_exactly(0,1,2)
    expect(find_anagram("cbaebabacd","abc")).to contain_exactly([0,6])
  end
end