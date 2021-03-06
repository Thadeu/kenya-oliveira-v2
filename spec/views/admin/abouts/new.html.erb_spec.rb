require 'rails_helper'

RSpec.describe "admin/abouts/new", type: :view do
  before(:each) do
    assign(:admin_about, Admin::About.new(
      :description => "MyString",
      :image => "MyString",
      :image_uid => "MyString",
      :image_name => "MyString"
    ))
  end

  it "renders new admin_about form" do
    render

    assert_select "form[action=?][method=?]", admin_abouts_path, "post" do

      assert_select "input#admin_about_description[name=?]", "admin_about[description]"

      assert_select "input#admin_about_image[name=?]", "admin_about[image]"

      assert_select "input#admin_about_image_uid[name=?]", "admin_about[image_uid]"

      assert_select "input#admin_about_image_name[name=?]", "admin_about[image_name]"
    end
  end
end
