require 'rails_helper'

RSpec.describe "wineries/index", type: :view do
  before(:each) do
    assign(:wineries, [
      Winery.create!(
        :name => "Name",
        :location => "Location",
        :description => "MyText"
      ),
      Winery.create!(
        :name => "Name",
        :location => "Location",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of wineries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
