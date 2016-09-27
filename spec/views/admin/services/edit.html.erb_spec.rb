require 'rails_helper'

RSpec.describe "admin/services/edit", type: :view do
  before(:each) do
    @admin_service = assign(:admin_service, Admin::Service.create!(
      :name => "MyString",
      :description => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit admin_service form" do
    render

    assert_select "form[action=?][method=?]", admin_service_path(@admin_service), "post" do

      assert_select "input#admin_service_name[name=?]", "admin_service[name]"

      assert_select "input#admin_service_description[name=?]", "admin_service[description]"

      assert_select "input#admin_service_image[name=?]", "admin_service[image]"
    end
  end
end
