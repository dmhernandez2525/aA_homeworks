class LruCache
  attr_reader :cache, :max_length
  def initialize(max_length)
    @cache = []
    @max_length = max_length
  end
  def count
    @cache.count
  end
  def add(el)
    if count < @max_length
      add_with_room(el)
    else
      add_without_room(el)
    end
  end
  def show
    p @cache
  end
  def add_with_room(el)
    if @cache.include?(el)
      @cache.delete(el)
      @cache << el
    else
      @cache << el
    end
  end
  def add_without_room(el)
    if @cache.include?(el)
      @cache.delete(el)
      @cache << el
    else
      @cache.shift
      @cache << el
    end
  end
end
