class MaxIntSet
	attr_accessor :store

  def initialize(max)
    @max = max
    @store = Array.new(@max, false)
  end

  def insert(num)
    if num > @max || num < 0
      raise "Out of bounds"
    else
      @store[num] = true
    end
  end

  def remove(num)
	@store[num] = false
  end

  def include?(num)
    @store[num] == true ? true : false
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
	attr_accessor :store
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
	@num_buckets = num_buckets
  end

  def insert(num)
	@store[num % 20] << num
  end

  def remove(num)
	# @store.each do |subArr|
	# 	if subArr.include?(num)
	# 		subArr.delete(num)
	# 	end
	# end
    if self[num].include?(num)
      self[num].delete(num)
    end
  end

  def include?(num) 
	@store.any? { |subArr| subArr.include?(num)}

  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num % 20]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
    @num_buckets = num_buckets
  end

  def insert(num)
    
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num % 20]
  end

  def num_buckets
    @store.length
  end

  def resize!
  end

  # def inspect
  #   "Length= #{@store.length}"
  # end
end
