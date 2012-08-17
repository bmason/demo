#!/usr/bin/env ruby1.9

class Class
  def subclasses
    ObjectSpace.each_object(Class).select { |klass| klass.superclass ==  self }
      .sort {|a,b| a.name <=> b.name }
  end
end

