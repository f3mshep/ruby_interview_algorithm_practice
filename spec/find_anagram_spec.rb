require "spec_helper"

describe "#find_anagrams" do
  it "returns the indices of all anagrams in string" do
    expect(find_anagrams("abab", "ab")).to contain_exactly(0,1,2)
    expect(find_anagrams("cbaebabacd","abc")).to contain_exactly(0,6)
  end
end