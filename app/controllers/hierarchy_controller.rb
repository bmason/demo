

class HierarchyController < ApplicationController
  def hierarchy
    load 'allsub.rb'
#    return render :text => "session info #{session.inspect}"
  end
end
