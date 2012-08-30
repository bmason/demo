#!/usr/bin/env ruby1.9

# require "benchmark"

class Class

  def getAllSubclassesWithIndent(all,  level, klasses) 
    klasses.select { |klass| klass.superclass ==  self}.  
    sort {|a,b| a.name <=> b.name }.each { |klass| all << (level + klass.name); klass.getAllSubclassesWithIndent(all, level + ".", klasses)}
end 
   
  # def getAllSubclassesWithIndent(all,  level, klasses) #TODO this is silly inefficient - tune
    # ObjectSpace.each_object(Class) .select { |klass| klass.superclass ==  self and klass.name != nil}.  #TODO  why are some class names nil?!?
    # sort {|a,b| a.name <=> b.name }.each { |klass| all << (level + klass.name); klass.getAllSubclassesWithIndent(all, level + ".", klasses)}
 # end

  def subclasses
    allSubclasses = Array.new
      self.getAllSubclassesWithIndent(allSubclasses, '', ObjectSpace.each_object(Class) .select { |klass| klass < self and klass.name != nil})
    allSubclasses 
  end
end

