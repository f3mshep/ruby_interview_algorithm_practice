require "spec_helper"

describe "#has_square_sums" do
  it "returns true if number has a square sum" do
    expect(has_square_sum(5)).to eq(true)
  end
  it "returns false if the number does not have a square sum" do
    expect(has_square_sum(3)).to eq(false)
  end
  it "returns true if the number is zero" do
    expect(has_square_sum(0)).to eq(true)
  end
end