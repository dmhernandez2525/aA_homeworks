require 'byebug'
class MaxIntSet
  attr_reader :store
  def initialize(max)
    @max = max
    @store = Array.new(@max,false)

  end

class HashSet
  attr_reader :count, :store

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
    @num_buckets = num_buckets
  end

  def insert(key)
    resize! if count >= @num_buckets
    unless include?(key)
      [key] << key
      @count += 1
      
    end

  end

  def include?(key)
    # debugger
    [key].include?(key)
  end

  def remove(key)

    if include?(key)
      [key].delete(key)
      @count -= 1
    end

  end

  private

  def [](num)
    @store[num.hash % num_buckets]
  end

  def num_buckets
    @store.length
  end

  def resize!
    old_store = @store.flatten
    new_store = HashSet.new(num_buckets*2)
    old_store.each {|ele| new_store.insert(ele)}
    @store = new_store.store
    @num_buckets *= 2
  end
end

  def insert(num)
    # if @store.count < @max
    #   @store[num] = num
    #   return true
    # else  
    #   raise "Out of bounds" 
    # end
    if num < @max && num > 0
      @store[num] = true
    else 
      raise "Out of bounds" 
    end
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    @store[num] #== true
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end

# a = IntSet.new(15000)
class IntSet
  def initialize(num_buckets = 20)
    # d = []
    # num_buckets.times{d << Array.new}
    @store = Array.new(num_buckets) { Array.new }
    @num_buckets = @num_buckets
  end

  def insert(num) #i = num % num_buckets
    self[num] << num
  end

  def remove(num)
    self[num].delete(num)
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    @store[num % num_buckets]
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count,:store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
    @num_buckets = num_buckets
  end

  def insert(num) #i = num % num_buckets
    
    if @count >= @num_buckets
      resize!
    end
    unless include?(num)
      self[num] << num
      @count += 1
    end
  endNotes:


  def remove(num)
    if include?(num)
      self[num].delete(num)
      @count -= 1
    end
   
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    @store[num % num_buckets]
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    # debugger
    old_thing = @store.dup.flatten
    dubd = ResizingIntSet.new(@num_buckets * 2)
    old_thing.each {|num| dubd.insert(num)}
    @store = dubd.store
    @num_buckets *= 2
    
  end
end
