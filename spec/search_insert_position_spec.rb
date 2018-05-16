require "spec_helper"

describe "#search_insert_position" do
  it "returns the index of the target" do
    expect(search_insert_position([1,3,5,6], 5)).to eq(2)
  end
  it "returns index of where target would be if it's not in the array" do
    expect(search_insert_position([1,3],0)).to eq(0)
    expect(search_insert_position([1,3], 2)).to eq(1)
    expect(search_insert_position([1,3,5,6], 2)).to eq(1)
    expect(search_insert_position([1,3,5,6], 7)).to eq(4)
    expect(search_insert_position([1,3,5,6], 0)).to eq(0)
  end
end
