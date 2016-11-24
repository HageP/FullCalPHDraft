require 'rails_helper'

RSpec.describe "rooms/show", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :building => "Building",
      :unit => "Unit",
      :bedrooms => 2,
      :bathrooms => 3,
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Building/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/4/)
  end
end
