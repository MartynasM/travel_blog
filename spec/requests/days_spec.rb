require 'rails_helper'

RSpec.describe "Days", :type => :request do
  describe "GET /days" do
    it "works! (now write some real specs)" do
      get days_path
      expect(response.status).to be(200)
    end
  end
end
