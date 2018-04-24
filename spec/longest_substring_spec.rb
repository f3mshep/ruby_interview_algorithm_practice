require "spec_helper"

describe "#length_of_longest_substring" do
  it "returns the length of the longest substring" do
    expect(length_of_longest_substring('abcabcbb')).to eq(3)
    expect(length_of_longest_substring('bbbbb')).to eq(1)
    expect(length_of_longest_substring('pwwkew')).to eq(3)
    expect(length_of_longest_substring('c')).to eq(1)
    expect(length_of_longest_substring('dvdf')).to eq(3)
    expect(length_of_longest_substring('au')).to eq(2)
    expect(length_of_longest_substring('abba')).to eq(2)
    expect(length_of_longest_substring("tmmzuxt")).to eq(5)
  end
end