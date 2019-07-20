require 'byebug'
require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
    @columns ||= DBConnection.execute2(<<-SQL)
    SELECT
      *
    FROM
      #{self.table_name}
    SQL
    .first.map(&:to_sym)
  end

  def self.finalize!

    self.columns.each do |name|  
      define_method(name) do  
        self.attributes[name]
      end
      define_method("#{name}=") do |arg = name|
        self.attributes[name] = arg
      end
    end
  end

  def self.table_name=(table_name)
    @table_name = table_name
  end

  def self.table_name
    @table_name ||= self.to_s.tableize
  end

  def self.all
    results = DBConnection.execute(<<-SQL)
    SELECT
      *
    FROM
      #{self.table_name}
    SQL
    # .each{|pram|self.send(:initialize, pram)}
    self.parse_all(results)
  end

  def self.parse_all(results)

    results.map{|pram| self.new(pram) }
  end

  def self.find(id)
    results = DBConnection.execute(<<-SQL)
    SELECT
      *
    FROM
      #{self.table_name}
    WHERE
      id = #{id}
    SQL

    self.parse_all(results).first
    # ...
  end

  def initialize(params = {})
    params.each do |k, v|
      raise "unknown attribute '#{k}'"  unless self.class.columns.include?(k.to_sym)
      self.send("#{k}=", v)
    end
  end

  def attributes
    @attributes ||= Hash.new 
    # ...
  end

  def attribute_values
    self.attributes.values
    # ...
  end

  def insert
    col_names = (self.class.columns[1..-1]).join(', ')
    vals = attribute_values.map { |v| v.to_s }
    quest_marks = Array.new(self.class.columns.length-1, '?').join(', ')
    DBConnection.execute(<<-SQL, vals)
    INSERT INTO
      #{self.class.table_name} (#{col_names}) 
    VALUES
      (#{quest_marks})
    SQL
    
    self.id = Cat.all.last.id
    # ...
  end

  def update
    set_line = (self.class.columns[1..-1]).map { |el| "#{el} = ?"}.join(' , ')
    vals = (attribute_values[1..-1]).map { |v| v.to_s }
    id = self.id
    DBConnection.execute(<<-SQL, vals, id)
    UPDATE
      #{self.class.table_name} 
    SET
      #{set_line}
    WHERE
      id = ?
    SQL
    # ...
  end

  def save
    p self
    if self.id.nil?
      
      insert
    else 
      update
    end 
    # ...
  end
end
