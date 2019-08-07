class Series
  attr_reader :int_series

  def initialize(int_series)
    @int_series = int_series
  end

  def slices(n)
    if n > int_series.length
      raise ArgumentError.new('n must be less than string length')
    else
      result = []
      int_series.split('').each_cons(n) { |x| result << x.join }
      result
    end
  end
end
