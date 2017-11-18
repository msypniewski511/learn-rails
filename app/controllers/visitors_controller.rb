class VisitorsController < ApplicationController
  require 'rainbow/ext/string'

  def new
    Rails.logger.debug 'DEBUG: '.background(:blue) +  ' entering the new method'
    @owner = Owner.new
    Rails.logger.debug 'DEBUG: '.background(:blue) + ' Owner name is ' + Rainbow(@owner.name).background(:red).bright
    #raise 'Deliberate Failure'.color(:red)
  end

end
