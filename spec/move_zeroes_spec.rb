require "spec_helper"

describe "#move_zeroes" do
  it "returns an array with all zeroes moved to the end" do
    expect(move_zeroes([1,0,0,2,4,5])).to eq([1,2,4,5,0,0])
    expect(move_zeroes([0,3,2,0,1,0])).to eq([3,2,1,0,0,0])
    expect(move_zeroes([0,0,0,0,1])).to eq([1,0,0,0,0])
    expect(move_zeroes([])).to eq([])
  end
end