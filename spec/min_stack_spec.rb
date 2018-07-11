require "spec_helper"

describe "MinStack" do
  describe "#stack" do
    it "exposes the stack" do
      test_stack = MinStack.new
      test_stack.stack = [1,2,3]
      expect(test_stack.stack).to eq([1,2,3])
    end
  end
  describe "#push" do
    it "pushes an element onto the stack" do
      test_stack = MinStack.new
      test_stack.push(1)
      test_stack.push(2)
      expect(test_stack.stack).to eq([1,2])
    end
  end
  describe "#top" do
    it "returns the top element of the stack" do
      test_stack = MinStack.new
      test_stack.push(1)
      test_stack.push(2)
      expect(test_stack.top).to eq(2)
    end
  end
  describe "pop" do
    it "removes the top element and returns it" do
      test_stack = MinStack.new
      test_stack.push(1)
      test_stack.push(2)
      test_stack.pop
      expect(test_stack.stack).to eq([1])
    end
  end
  describe "#get_min" do
    it "returns the smallest element" do
      test_stack = MinStack.new
      test_stack.push(1)
      test_stack.push(2)
      expect(test_stack.get_min).to eq(1)
      test_stack.push(-1)
      expect(test_stack.get_min).to eq(-1)
      test_stack.pop
      expect(test_stack.get_min).to eq(1)
    end
  end

end