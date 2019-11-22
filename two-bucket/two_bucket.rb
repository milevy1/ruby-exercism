class TwoBucket
  attr_reader :bucket_1_size, :bucket_2_size, :goal, :start_with_bucket

  def initialize(bucket_1_size, bucket_2_size, goal,start_with_bucket)
    @bucket_1_size = bucket_1_size
    @bucket_2_size = bucket_2_size
    @goal = goal
    @start_with_bucket = start_with_bucket

    @state = {
      bucket_1: {
        current_volume: 0,
        max_volume: bucket_1_size
      },
      bucket_2: {
        current_volume: 0,
        max_volume: bucket_2_size
      },
      moves: 0
    }
  end

  # return min number of moves
  def moves

  end
end
