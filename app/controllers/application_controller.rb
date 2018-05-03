class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  layout 'application'
  
  def greet
    @greeting = GreeterService.new.greet
    render "/greeter"
  end
  
  def greet_new
    @greeting = GreeterService.new.greet_new(params[:name])
    render "/greeter"
  end
end
