class Array
  def accumulate
    result = []

    self.each do |i|
      result << yield(i)
    end

    result
  end
end
