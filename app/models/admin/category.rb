# == Schema Information
#
# Table name: admin_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  slug       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Admin::Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  #relacionamento com usuário
  belongs_to :user
  has_many :admin_photo, class_name: 'Admin::Photo', foreign_key: 'admin_category_id'

  default_scope { where(actived: true) }

  #antes de salvar cria o slug
  before_save :slug_parameterize

  #Validação do nome da categoria
  validates :name, presence: true, uniqueness: true

  private
    def slug_parameterize
      self.slug = name.parameterize
    end
end
