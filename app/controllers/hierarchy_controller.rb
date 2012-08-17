

class HierarchyController < ApplicationController
  def hierarchy
    load 'sub.rb'
#    return render :text => "session info #{session.inspect}"
  end
end
