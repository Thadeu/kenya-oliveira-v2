require 'rails_helper'

RSpec.describe "admin/abouts/show", type: :view do
  before(:each) do
    @admin_about = assign(:admin_about, Admin::About.create!(
      :description => "Description",
      :image => "Image",
      :image_uid => "Image Uid",
      :image_name => "Image Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Image Uid/)
    expect(rendered).to match(/Image Name/)
  end
end
