require 'rails_helper'

RSpec.describe "Calculations", type: :request do
  describe "GET /calculations" do
    it "works! (now write some real specs)" do
      get calculations_path
      expect(response).to have_http_status(200)
    end
  end
end
