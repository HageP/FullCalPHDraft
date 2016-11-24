require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :building => "Building",
        :unit => "Unit",
        :bedrooms => 2,
        :bathrooms => 3,
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => 4
      ),
      Room.create!(
        :building => "Building",
        :unit => "Unit",
        :bedrooms => 2,
        :bathrooms => 3,
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => 4
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Building".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
