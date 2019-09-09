class BinarySearch
  attr_reader :list

  def initialize(list)
    raise ArgumentError if list != list.sort
    @list = list
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
