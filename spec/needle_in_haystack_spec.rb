require "spec_helper"

describe "#needle_in_haystack" do
  it "returns the index of match" do
    expect(needle_in_haystack("noodle", 'd') ).to eq(3)
    expect(needle_in_haystack("betta fish", 'tta')).to eq(2)
    expect(needle_in_haystack("mississippi", "issip")).to eq(4)

  end
  it "returns 0 if the needle is empty" do
    expect(needle_in_haystack("three", '')).to eq(0)
  end
  it "returns -1 if no match" do
    expect(needle_in_haystack('doodle', 'z')).to eq(-1)
    expect(needle_in_haystack("", "a")).to eq(-1)
  end
end