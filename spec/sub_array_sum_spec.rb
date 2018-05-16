require "spec_helper"

describe "#sub_array_sum" do
  it "returns the largest max sum of contiguous numbers in array" do
    expect(sub_array_sum([-2,1,-3,4,-1,2,1,-5,4])).to eq(6)
    expect(sub_array_sum([-3,-1,-6,-2])).to eq(-1)
    expect(sub_array_sum([-3,-1,-6,-2,0])).to eq(0)
  end
end