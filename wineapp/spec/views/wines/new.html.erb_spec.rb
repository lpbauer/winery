require 'rails_helper'

RSpec.describe "wines/new", type: :view do
  before(:each) do
    assign(:wine, Wine.new(
      :name => "MyString",
      :vintage => 1,
      :description => "MyText",
      :winery => nil
    ))
  end

  it "renders new wine form" do
    render

    assert_select "form[action=?][method=?]", wines_path, "post" do

      assert_select "input#wine_name[name=?]", "wine[name]"

      assert_select "input#wine_vintage[name=?]", "wine[vintage]"

      assert_select "textarea#wine_description[name=?]", "wine[description]"

      assert_select "input#wine_winery_id[name=?]", "wine[winery_id]"
    end
  end
end
