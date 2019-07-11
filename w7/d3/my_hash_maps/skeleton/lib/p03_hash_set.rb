require "byebug"
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
      self[key] << key
      @count += 1
      
    end

  end

  def include?(key)
    # debugger
    self[key].include?(key)
  end
  # h = hmap
  # h[e] ==> private err
  def remove(key)

    if include?(key)
      self[key].delete(key)
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
