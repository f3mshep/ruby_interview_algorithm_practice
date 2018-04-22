# You have been developing a successor to google in your basement. It is hosted on an old computer, but it works.
# Your search engine stores URLs it has been to in an array, but your computer is running out of memory!
# Design a more effective way to store the URLs.

class URLTrie
  attr_accessor :visited

  def initialize
    self.visited = {}
  end
  
  def has_URL(url)
    current_node = self.visited
    url.each_char do |char|
      if current_node[char]
        current_node = current_node[char]
      else
        return false
      end
    end
    current_node["*"] == {}
  end

  def insert_URL(url)
    current_node = self.visited
    url.each_char do |char|
      if current_node[char]
        current_node = current_node[char]
        next
      else
        current_node[char] = {}
        current_node = current_node[char]
      end
    end
    current_node["*"] = {}
    visited
  end

end