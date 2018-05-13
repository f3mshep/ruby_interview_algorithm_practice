require "spec_helper"

describe "#matching_paren" do
  it "returns the index of the matching closing parenthesis" do
    expect(matching_paren("adc(fdf)",3)).to eq(7)
    expect(matching_paren("((a))",0)).to eq(4)
  end
  it "raises an error if index does not contain parenthesis" do
    expect{matching_paren("a",0)}.to raise_error("No parenthesis found at 0")
  end
  it "returns nil if there is no matching closing parenthesis" do
    expect(matching_paren("(a",0)).to eq(nil)
  end
end