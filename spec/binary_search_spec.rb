require "spec_helper"

describe "#binary_search" do
  before :each do
    @arr_a = [-1, 1, 0, 5, 8]
    @arr_b = [3,2,4,1000]
  end
  it "returns true if an element exists in the array" do
    expect(binary_search(@arr_a,-1)).to eq(true)
    expect(binary_search([0],0)).to eq(true)
    expect(binary_search(@arr_b,4)).to eq(true)
  end
  it "returns false if an element does not exist in the array" do
    expect(binary_search(@arr_a,-5)).to eq(false)
    expect(binary_search([0],3)).to eq(false)
  end
  it "handles edge cases" do
    expect(binary_search([], 3)).to eq(false)
  end
end