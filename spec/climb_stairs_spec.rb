require "spec_helper"

describe "#climb_stairs" do
  it "returns all the different ways to climb stairs" do
    expect(climb_stairs(3)).to eq(3)
    expect(climb_stairs(2)).to eq(2)
    expect(climb_stairs(4)).to eq(5)
  end
end