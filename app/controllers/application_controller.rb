class ApplicationController < ActionController::Base
  layout 'site'

  protect_from_forgery with: :exception

  respond_to :html, :json
  responders :flash
end
