require "spec_helper"

describe "#arr_jumper" do
  possible_arr = [2,3,1,1,4]
  impossible_arr = [3,2,1,0,4]
  it "returns true there is a possible solution" do
    expect(arr_jumper(possible_arr)).to eq(true)
  end
  it "returns false when there is no possible solution" do
    expect(arr_jumper(impossible_arr)).to eq(false)
  end
end