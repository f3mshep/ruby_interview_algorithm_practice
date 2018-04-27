require "spec_helper"

describe "#is_sum" do
  it "returns true if any numbers in array add up to sum" do
    expect(is_sum([4,4,2,3], 8)).to eq(true)
    expect(is_sum([3,3,2,6], 9)).to eq(true)
  end
  it "returns false if numbers do not add up to sum" do
    expect(is_sum([1,32,2], 9)).to eq(false)
    expect(is_sum([],3)).to eq(false)
  end
end