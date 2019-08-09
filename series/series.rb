class Series
  attr_reader :int_series

  def initialize(int_series)
    @int_series = int_series
  end

  def slices(n)
    raise ArgumentError if n > int_series.length

    int_series.each_char
              .each_cons(n)
              .reduce([]) { |result, sequence| result << sequence.join }
  end
end
