require 'rails_helper'

RSpec.describe "wineries/edit", type: :view do
  before(:each) do
    @winery = assign(:winery, Winery.create!(
      :name => "MyString",
      :location => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit winery form" do
    render

    assert_select "form[action=?][method=?]", winery_path(@winery), "post" do

      assert_select "input#winery_name[name=?]", "winery[name]"

      assert_select "input#winery_location[name=?]", "winery[location]"

      assert_select "textarea#winery_description[name=?]", "winery[description]"
    end
  end
end
