require 'rails_helper'

RSpec.describe "Wineries", type: :request do
  describe "GET /wineries" do
    it "works! (now write some real specs)" do
      get wineries_path
      expect(response).to have_http_status(200)
    end
  end
end
