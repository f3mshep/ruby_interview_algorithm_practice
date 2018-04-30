require "spec_helper"

describe "#my_atoi" do
  it "turns a string into an integer" do
    expect(my_atoi("42")).to eq(42)
  end
  it "can handle negative and positive integers" do
    expect(my_atoi("-42")).to eq(-42)
    expect(my_atoi("+42")).to eq(42)
  end
  it "ignores whitespace" do
    expect(my_atoi("     -42")).to eq(-42)
  end
  it "ignores words after integers" do
    expect(my_atoi("4193 I am words whee")).to eq(4193)
  end
  it "returns 0 if words happen before integers" do
    expect(my_atoi("oh shoot I am in the wrong place 5122")).to eq(0)
  end
  it "does not handle 32bit signed integer overflows" do
    expect(my_atoi("-91283472332")).to eq(-2147483648)
  end
end