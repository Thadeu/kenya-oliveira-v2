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

require 'test_helper'

class Admin::PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
