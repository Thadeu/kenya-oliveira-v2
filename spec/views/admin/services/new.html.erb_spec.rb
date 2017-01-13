require 'rails_helper'

RSpec.describe "admin/services/new", type: :view do
  before(:each) do
    assign(:admin_service, Admin::Service.new(
      :name => "MyString",
      :description => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new admin_service form" do
    render

    assert_select "form[action=?][method=?]", admin_services_path, "post" do

      assert_select "input#admin_service_name[name=?]", "admin_service[name]"

      assert_select "input#admin_service_description[name=?]", "admin_service[description]"

      assert_select "input#admin_service_image[name=?]", "admin_service[image]"
    end
  end
end
