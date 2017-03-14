require 'rails_helper'

RSpec.describe "wineries/new", type: :view do
  before(:each) do
    assign(:winery, Winery.new(
      :name => "MyString",
      :location => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new winery form" do
    render

    assert_select "form[action=?][method=?]", wineries_path, "post" do

      assert_select "input#winery_name[name=?]", "winery[name]"

      assert_select "input#winery_location[name=?]", "winery[location]"

      assert_select "textarea#winery_description[name=?]", "winery[description]"
    end
  end
end
