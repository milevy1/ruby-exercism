class Nucleotide
  def initialize(dna)
    @dna = dna
  end

  def self.from_dna(dna)
    raise ArgumentError if invalid_dna?(dna)

    Nucleotide.new(dna)
  end

  def self.invalid_dna?(dna)
    /[^AGCT]/.match?(dna)
  end

  def count(strand)
    dna.count(strand)
  end

  def histogram
    ['A', 'T', 'C', 'G'].each_with_object({}) do |strand, result|
      result[strand] = count(strand)
    end
  end

  private
  attr_reader :dna
end
