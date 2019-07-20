require_relative '02_searchable'
require 'active_support/inflector'

# Phase IIIa
class AssocOptions
  attr_accessor(
    :foreign_key,
    :class_name,
    :primary_key
  )

  def model_class
    self.class_name.to_s.constantize
    # ...
  end

  def table_name
    self.class_name.downcase + 's'
    # ...
  end
end

class BelongsToOptions < AssocOptions
  def initialize(name, options = {})
    @primary_key = options[:primary_key] ||= :id
    @foreign_key = options[:foreign_key] ||= "#{name}_id".to_sym
    @class_name = options[:class_name] ||= name.capitalize
    # ...
  end
end

class HasManyOptions < AssocOptions
  def initialize(name, self_class_name, options = {})
   @primary_key = options[:primary_key] ||= :id
   @foreign_key = options[:foreign_key] ||= "#{self_class_name.downcase}_id".to_sym
   @class_name = options[:class_name] ||= name[0..-2].capitalize
    # ...
  end
end

module Associatable
  # Phase IIIb
  def belongs_to(name, options = {})
    
    options = BelongsToOptions.new(name, options)
    p self.send(options.primary_key)
    define_method(name) do
  
      foreign_key = options.send(:foreign_key)

      options.model_class
      self.class.where({options.foreign_key => options.primary_key})


    end

    
  end

  def has_many(name, options = {})
    # ...
  end

  def assoc_options
    # Wait to implement this in Phase IVa. Modify `belongs_to`, too.
  end

end

class SQLObject
  extend Associatable

  # Mixin Associatable here...
end
