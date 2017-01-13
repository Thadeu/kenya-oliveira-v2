require 'rails_helper'

RSpec.describe "admin/abouts/index", type: :view do
  before(:each) do
    assign(:admin_abouts, [
      Admin::About.create!(
        :description => "Description",
        :image => "Image",
        :image_uid => "Image Uid",
        :image_name => "Image Name"
      ),
      Admin::About.create!(
        :description => "Description",
        :image => "Image",
        :image_uid => "Image Uid",
        :image_name => "Image Name"
      )
    ])
  end

  it "renders a list of admin/abouts" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Image Uid".to_s, :count => 2
    assert_select "tr>td", :text => "Image Name".to_s, :count => 2
  end
end
