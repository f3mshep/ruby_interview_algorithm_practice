require "spec_helper"

describe "#fraction_to_decmial" do
  it "returns a decimal as a string" do
    expect(fraction_to_decimal(1,2)).to eq("0.5")
  end
  it "returns a whole number as an integer in a string" do
    expect(fraction_to_decimal(2, 1)).to eq("2")
  end
  it "wraps repeating decimals in parenthesis" do
    expect(fraction_to_decimal(2, 3)).to eq("0.(6)")
  end
end