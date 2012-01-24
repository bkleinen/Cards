require 'spec_helper'

describe "IndexCards" do
  describe "GET /index_cards" do
    it "works! (now write some real specs)" do
      visit index_cards_path
      response.status.should be(200)
    end
  end
end
