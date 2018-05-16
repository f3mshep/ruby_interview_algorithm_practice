require "spec_helper"

describe "#remove_element_in_place" do
  it "removes all elements matching the value in place" do
    nums = [1,2,3,3,5,3,2]
    remove_element_in_place(nums, 3)
    expect(nums).to contain_exactly(1,2,5,2)
  end
  it "returns the length of the new array" do
    nums = [1,2,3,3,5,3,2]
    expect(remove_element_in_place(nums, 3)).to eq(4)
  end
end