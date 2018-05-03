require "spec_helper"

describe "#phone_letter_combinations" do
  it "returns an array containing all possible permutations" do
    expect(phone_letter_combinations("23")).to contain_exactly("ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf")
  end
  it "handles edge cases" do
    expect(phone_letter_combinations("")).to eq([])
  end
end