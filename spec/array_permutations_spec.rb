require "spec_helper"

describe "array_permutations" do
  it "returns an array of arrays containing all possible permutations" do
    expect(array_permutations([1,2,3])).to contain_exactly([1, 2, 3], [2, 1, 3], [2, 3, 1], [1, 3, 2], [3, 1, 2], [3, 2, 1])
  end
end