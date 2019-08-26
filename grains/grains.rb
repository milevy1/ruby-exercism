class Grains
  def self.square(count)
    raise ArgumentError if count < 1 || count > 64

    2 ** (count - 1)
  end

  def self.total
    (1..64).sum { |square_number| square(square_number) }
  end
end
