require "spec_helper"

describe "#find_unsorted_subarray" do
  it "returns the length of the unsorted subarray" do
    expect(find_unsorted_subarray([1,2,4,6,5,9,10])).to eq(2)
    expect(find_unsorted_subarray([1,2,4,3,6,5,9,10])).to eq(4)
  end
  it "returns 0 if the array is already sorted" do
    expect(find_unsorted_subarray([1,2,3,4,5])).to eq(0)
  end
  it "returns the length of the array if it is not sorted" do
    expect(find_unsorted_subarray([3,2,5,8,1])).to eq(5)
  end
end