require "spec_helper"

describe "#palindrome_index" do
  it "returns the index of a letter that can be removed to create a palindrome" do
    expect(palindrome_index('afabaa')).to eq(1)
    expect(palindrome_index('bccc')).to eq(0)
  end
  it "returns -1 if the string is already a palindrome" do
    expect(palindrome_index('aaa')).to eq(-1)
  end
  it "returns -1 if no character can be removed to make palindrome" do
    expect(palindrome_index('zag')).to eq(-1)
  end
end