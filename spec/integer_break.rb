require "spec_helper"

describe "#integer_break" do
  it "returns the maximal product of the terms" do
    expect(integer_break(4)).to eq(4)
    expect(integer_break(2)).to eq(2)
    expect(integer_break(10)).to eq(36)
  end
end