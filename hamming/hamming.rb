class Hamming
  def self.compute(strand_1, strand_2)
    raise ArgumentError if strand_1.length != strand_2.length
    return 0 if strand_1 == strand_2

    (0..strand_1.length).reduce(0) do |acc, i|
      acc += 1 if strand_1[i] != strand_2[i]
      acc
    end
  end
end
