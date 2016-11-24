require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      :building => "MyString",
      :unit => "MyString",
      :bedrooms => 1,
      :bathrooms => 1,
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input#room_building[name=?]", "room[building]"

      assert_select "input#room_unit[name=?]", "room[unit]"

      assert_select "input#room_bedrooms[name=?]", "room[bedrooms]"

      assert_select "input#room_bathrooms[name=?]", "room[bathrooms]"

      assert_select "input#room_address[name=?]", "room[address]"

      assert_select "input#room_city[name=?]", "room[city]"

      assert_select "input#room_state[name=?]", "room[state]"

      assert_select "input#room_zip[name=?]", "room[zip]"
    end
  end
end
