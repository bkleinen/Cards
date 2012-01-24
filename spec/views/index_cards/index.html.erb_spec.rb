require 'spec_helper'

describe "index_cards/index" do
  before(:each) do
    assign(:index_cards, [
      stub_model(IndexCard,
        :title => "Title",
        :front => "Front",
        :back => "Back"
      ),
      stub_model(IndexCard,
        :title => "Title",
        :front => "Front",
        :back => "Back"
      )
    ])
  end

  it "renders a list of index_cards" do
    render
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Front".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Back".to_s, :count => 2)
  end
end
