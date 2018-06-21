require 'spec_helper'

describe "#string_decoder" do
  it "returns a decoded string" do
    expect(string_decoder("4[ab]")).to eq("abababab")
    expect(string_decoder("2[b3[a]]")).to eq("baaabaaa")
  end
end