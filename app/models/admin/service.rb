class Admin::Service < ActiveRecord::Base
  
  #extend as validaçõed do Dragonfly
  extend Dragonfly::Model::Validations

  dragonfly_accessor :image
end
