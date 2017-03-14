require 'rails_helper'

RSpec.describe "wineries/show", type: :view do
  before(:each) do
    @winery = assign(:winery, Winery.create!(
      :name => "Name",
      :location => "Location",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
  end
end
