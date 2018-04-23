require "spec_helper"

describe "#longest_palindrome" do
  it "prints the longest consecutive palindrome in a string" do
    expect(longest_palindrome("cbbd")).to eq("bb")
    expect(longest_palindrome("boobs")).to eq("boob")
    expect(longest_palindrome("racecar")).to eq("racecar")
    expect(longest_palindrome("babadada")).to eq("adada")
  end
end