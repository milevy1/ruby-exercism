class Triplet
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def sum
    a + b + c
  end

  def product
    a * b * c
  end

  def pythagorean?
    a**2 + b**2 == c**2
  end

  def self.where(options)
    max_factor = options[:max_factor]
    min_factor = options[:min_factor] || 1

    (min_factor..max_factor).reduce([]) do |result, a|
      (min_factor..max_factor).each do |b|
        if valid_triplet?(a, b, max_factor)
          triplet = Triplet.new(a, b, Math.sqrt(a**2 + b**2).floor)

          result << triplet if options[:sum] && options[:sum] == triplet.sum
          result << triplet if !options[:sum]
        end
      end
      result
    end
  end

  def self.valid_triplet?(a, b, max_factor)
    a < b && \
    Math.sqrt(a**2 + b**2) <= max_factor && \
    a**2 + b**2 == Math.sqrt(a**2 + b**2).floor ** 2
  end

  private
  attr_reader :a, :b, :c
end
