class TwoBucket
  attr_reader :bucket_1_size, :bucket_2_size, :desired_size,
              :bucket_to_fill_first, :state

  def initialize(bucket_1_size, bucket_2_size, desired_size, bucket_to_fill_first)
    @bucket_1_size = bucket_1_size
    @bucket_2_size = bucket_2_size
    @desired_size = desired_size
    @bucket_to_fill_first = bucket_to_fill_first

    @state = initial_state
    calculate
  end

  def initial_state
    {
      bucket_1: {
        max_volume: bucket_1_size,
        volume: 0,
      },
      bucket_2: {
        max_volume: bucket_2_size,
        volume: 0,
      },
      moves_taken: 0
    }
  end

  def calculate
    until desired_size_is_reached do
      make_a_move
    end
  end

  def desired_size_is_reached
    state[:bucket_1_volume] == desired_size ||
      state[:bucket_2_volume] == desired_size
  end

  def make_a_move
    if state[:moves_taken] == 0
      fill_first_bucket
    else
      move_first_bucket_water_to_other_bucket
    end
  end

  def fill_first_bucket
    if bucket_to_fill_first == 'one'
      fill_bucket_one
    else
      fill_bucket_two
    end
    increment_moves_taken
  end

  def move_first_bucket_water_to_other_bucket
    bucket_to_fill_second
  end

  def bucket_to_fill_second
    other_bucket = {
      "one" => "two",
      "two" => "one"
    }

    other_bucket[bucket_to_fill_first]
  end

  def fill_bucket_one
    state[:bucket_1][:volume] = state[:bucket_1][:max_volume]
  end

  def fill_bucket_two
    state[:bucket_2][:volume] = state[:bucket_2][:max_volume]
  end

  def increment_moves_taken
    state[:moves_taken] += 1
  end

  # return min number of moves
  def moves
    state.moves_taken
  end
end
