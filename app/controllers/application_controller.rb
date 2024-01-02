class ApplicationController < ActionController::Base

  before_action :set_system


  def set_system
    p @system = System.all.first
  end
end
