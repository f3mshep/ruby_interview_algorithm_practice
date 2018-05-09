require "spec_helper"

describe "#valid_anagram" do
  it "returns how many changes are needed to make an anagram" do
    expect(valid_anagram("abccde")).to eq(2)
    expect(valid_anagram("xaxbbbxx")).to eq(1)
    expect(valid_anagram("dnqaurlplofnrt")).to eq()
  end
  it "returns -1 if it is not possible to make anagram" do
    expect(valid_anagram("a")).to eq(-1)
  end
end