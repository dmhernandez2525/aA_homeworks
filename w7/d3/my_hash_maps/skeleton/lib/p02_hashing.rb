class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    hash = 0
    each_with_index do |ele,i| 
      if ele.is_a? Integer
        hash += (ele.object_id)/(i+1)
      else
        hash += (ele.to_sym.object_id)/(i+1)
      end
    end

    hash
  end
end

class String
  def hash
    to_sym.object_id
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    hash = 0
    self.sort.to_a.each.with_index do |subs,i|
      hash += (subs.hash / (i + 1))
    end

    return hash
  end
end
