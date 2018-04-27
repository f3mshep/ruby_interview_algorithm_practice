require "spec_helper"

describe "#fib" do
  it "returns the nth number in the fibbonaci sequence (starts at 0)" do
    expect(fib(0)).to eq(0)
    expect(fib(8)).to eq(21)
    expect(fib(3)).to eq(2)
  end
end