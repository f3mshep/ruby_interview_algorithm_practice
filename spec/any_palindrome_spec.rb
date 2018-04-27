require "spec_helper"

describe "#any_palindrome" do
  it "returns true if the string contains the letters to make a palindrome" do
    expect(any_palindrome("aabaa")).to eq(true)
    expect(any_palindrome("aabab")).to eq(true)
  end
  it "returns false if the string does not contain letters to make a palindrome" do
    expect(any_palindrome("zay")).to eq(false)
  end
end