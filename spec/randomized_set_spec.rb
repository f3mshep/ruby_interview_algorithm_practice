describe "RandomizedSet" do
  before(:each){@set = RandomizedSet.new}
  describe "#includes?" do
    it "returns a boolean indicating in value is present" do
      @set.insert(1)
      @set.insert(2)
      expect(@set.includes?(2).to eq(true))
      expect(@set.includes?(3).to eq(false))
    end
  end
  describe "#insert" do
    it "inserts value into set" do
      @set.insert(1)
      expect(@set.includes?(1)).to eq(true)
    end
    it "returns boolean indicating if value exists in set" do
      expect(@set.insert(1)).to eq(true)
      expect(@set.insert(1)).to eq(false)
    end
  end
  describe "#remove" do
    it "removes value from set" do
      @set.insert(1)
      @set.remove(1)
      expect(@set.includes?(1)).to eq(false)
    end
    it "returns a boolean indicating if value exists in set" do
      @set.insert(1)
      expect(@set.remove(1)).to eq(true)
      expect(@set.remove(1)).to eq(false)
    end
  end
  describe "#getRandom" do
    it "returns a random value from set" do
      @set.insert(1)
      @set.insert(2)
      @set.insert(3)
      @set.insert(4)
      res = []
      srand(333)
      4.times {res << @set.get_random}
      expect(res).to eq(1,1,2,3)
    end
  end
end