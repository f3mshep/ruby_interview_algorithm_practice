require "spec_helper"

describe "#find_disappeared_numbers" do
  it "returns the disappeared numbers from an array" do
    expect(find_disappeared_numbers([4,3,2,7,8,2,3,1])).to eq([5,6])
    expect(find_disappeared_numbers([])).to eq([])
    expect(find_disappeared_numbers([1,2,3])).to eq([])
  end
end