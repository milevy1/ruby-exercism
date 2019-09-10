class BinarySearch
  attr_reader :list

  def initialize(list)
    raise ArgumentError if list != list.sort
    @list = list
    build_binary_search_tree
  end

  def build_binary_search_tree
    temp_list = list.dup
    head = temp_list.slice!(list.size/2)

    @tree = Node.new(head)

    until temp_list.empty?
      next_val = temp_list.slice!(temp_list.size/2)
      @tree.insert(next_val)
    end
  end

  def search_for(value)
    if list.index(value)
      list.index(value)
    else
      raise RuntimeError
    end
  end

  def middle
    list.size / 2
  end
end

class Node
  attr_reader :value, :right, :left
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def insert(new_value)
    if new_value > value
      insert_right(new_value)
    else
      insert_left(new_value)
    end
  end

  def insert_right(new_value)
    if @right.nil?
      @right = Node.new(new_value)
    else
      @right.insert(new_value)
    end
  end

  def insert_left(new_value)
    if @left.nil?
      @left = Node.new(new_value)
    else
      @left.insert(new_value)
    end
  end
end
