require "spec_helper"

describe "#two_sum" do
  it "returns an empty array if given an empty array do" do
    expect(two_sum([],3)).to eq([])
  end
  it "returns an array of two indices that sum to the target" do
    expect(two_sum([2, 7, 11, 15], 9)).to match_array([0,1])
    expect(two_sum([15,17,2,1,-3], 12)).to match_array([0,4])
    expect(two_sum([15,2,2,1,-3], 4)).to match_array([1,2])
  end
end