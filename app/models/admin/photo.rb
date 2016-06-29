# == Schema Information
#
# Table name: admin_photos
#
#  id                :integer          not null, primary key
#  admin_category_id :integer
#  user_id           :integer
#  name              :string(255)
#  actived           :boolean
#  deleted_at        :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  image_uid         :string(255)
#  image_name        :string(255)
#

class Admin::Photo < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  #extend as validaçõed do Dragonfly
  extend Dragonfly::Model::Validations

  default_scope { where(actived: true) }

  #relacionamento com usuário
  belongs_to :user
  #relacionamento com tabela de photos
  belongs_to :admin_category, class_name: 'Admin::Category'

  #upload de photos
  dragonfly_accessor :image

  validates :admin_category, presence: true
  validates :user, presence: true
  validates :name, presence: true
  validates :actived, presence: true

  validates_presence_of :image
  validates_property :format, of: :image, in: ['jpeg', 'png']
end
