require 'rails_helper'

RSpec.describe "admin/services/show", type: :view do
  before(:each) do
    @admin_service = assign(:admin_service, Admin::Service.create!(
      :name => "Name",
      :description => "Description",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Image/)
  end
end
