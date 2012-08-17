#!/usr/bin/env ruby1.9

class Class

   
  def getAllSubclassesWithIndent(all,  level) #TODO this is silly inefficient - tune
    ObjectSpace.each_object(Class) .select { |klass| klass.superclass ==  self and klass.name != nil}.  #TODO  why are some class names nil?!?
    sort {|a,b| a.name <=> b.name }.each { |klass| all << (level + klass.name); klass.getAllSubclassesWithIndent(all, level + ".")}
  end

  def subclasses
    allSubclasses = Array.new
    self.getAllSubclassesWithIndent(allSubclasses, '')
#    Rails.logger.debug allSubclasses.inspect 
    allSubclasses 
  end
end

