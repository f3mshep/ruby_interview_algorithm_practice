# Implement a Queue (A FIFO data structure) by using two stacks(a FILO data structure).

class Queue
  attr_accessor :insert, :access

  def initialize
    self.insert = []
    self.access = []
  end

  def enqueue(element)
    load_insert
    insert.push(element)
  end

  def dequeue
    load_access
    access.pop
  end

  def is_empty?
    insert.empty? && access.empty?
  end

  def peek
    load_access
    access.first
  end

  private

  def load_access
    if access.empty?
      insert.size.times do 
        moved_element = insert.pop
        access.push(moved_element)
      end
    end
  end

  def load_insert
    if insert.empty?
      access.size.times do
        moved_element = access.pop
        insert.push(moved_element)
      end
    end
  end

end
