require 'rails_helper'

RSpec.describe "admin/services/index", type: :view do
  before(:each) do
    assign(:admin_services, [
      Admin::Service.create!(
        :name => "Name",
        :description => "Description",
        :image => "Image"
      ),
      Admin::Service.create!(
        :name => "Name",
        :description => "Description",
        :image => "Image"
      )
    ])
  end

  it "renders a list of admin/services" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
