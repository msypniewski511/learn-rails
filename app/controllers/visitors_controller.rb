class VisitorsController < ApplicationController
  require 'rainbow/ext/string'

  def new
    Rails.logger.debug 'DEBUG: '.background(:blue) +  ' entering the new method'
    @owner = Owner.new
    flash.now[:notice] = 'Welcome!'
    flash.now[:alert] = 'My birthday is soon.'
    Rails.logger.debug 'DEBUG: '.background(:blue) + ' Owner name is ' + Rainbow(@owner.name).background(:red).bright
    #raise 'Deliberate Failure'.color(:red)
  end

  def colekcja
    @kols = 1..100
  end

end
