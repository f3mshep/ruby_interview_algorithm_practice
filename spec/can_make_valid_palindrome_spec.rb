require "spec_helper"

describe "#can_make_valid_palindrome" do
  it "returns true if string is a palindrome" do
    expect(can_make_valid_palindrome("aba")).to eq(true)
  end
  it "returns true if a character can be removed to make palindrome" do
    expect(can_make_valid_palindrome("abca")).to eq(true)
    expect(can_make_valid_palindrome("aguokepatgbnvfqmgmlcupuufxoohdfpgjdmysgvhmvffcnqxjjxqncffvmhvgsymdjgpfdhooxfuupuculmgmqfvnbgtapekouga")).to eq(true)
  end
  it "returns false if a palindrome can't be made" do
    expect(can_make_valid_palindrome("azafadfg")).to eq(false)
  end
end