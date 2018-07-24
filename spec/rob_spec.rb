require "spec_helper"


describe "#rob" do
  it "returns the highest score from robbing non-adjacent houses" do
    expect(rob([1,2,3,1])).to eq(4)
    expect(rob([2,7,9,3,1])).to eq(12)
  end
end