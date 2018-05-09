require "spec_helper"

describe "#longest_prefix" do
  it "returns the longest prefix from an array of words" do
    expect(longest_prefix(["flower", "flow", "flag"])).to eq("fl")
    expect(longest_prefix(['aa','a'])).to eq('a')
    expect(longest_prefix(['aa', 'aaba', ''])).to eq("")
  end
  it "returns an empty string if there is no common prefix" do
    expect(longest_prefix(['tuba', 'dingo', 'flap'])).to eq("")
    expect(longest_prefix []).to eq("")
  end
end