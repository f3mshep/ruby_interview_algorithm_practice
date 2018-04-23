require "spec_helper"

describe "#reverse_integer" do
  it "returns a reversed integer" do
    expect(reverse_integer(3001)).to eq(1003)
    expect(reverse_integer(-321)).to eq(-123)
    expect(reverse_integer(120)).to eq(21)
  end
  it "returns 0 if the integer would overflow a 32bit signed integer" do
    expect(reverse_integer(1534236469)).to eq(0)
  end
end