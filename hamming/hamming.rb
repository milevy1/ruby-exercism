class Hamming
  def self.compute(strand_1, strand_2)
    raise ArgumentError if strand_1.length != strand_2.length
    return 0 if strand_1 == strand_2

    (0..strand_1.length).map do |i|
      strand_1[i] != strand_2[i] ? 1 : 0
    end.sum
  end
end
