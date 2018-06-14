require "spec_helper"

describe "#enter_the_matrix" do
  it "returns the result of traversing a matrix in a spiral fashion" do
    expect(enter_the_matrix(2)).to eq([1,2,4,3])
    expect(enter_the_matrix(3)).to eq([1,2,3,6,9,8,7,4,5])
    expect(enter_the_matrix(4)).to eq([1,2,3,4,8,12,16,15,14,13,9,5,6,7,11,10])
  end
end