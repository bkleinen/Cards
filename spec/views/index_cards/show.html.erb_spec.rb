require 'spec_helper'

describe "index_cards/show" do
  before(:each) do
    @index_card = assign(:index_card, stub_model(IndexCard,
      :title => "Title",
      :front => "Front",
      :back => "Back"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Title".to_s)
    rendered.should contain("Front".to_s)
    rendered.should contain("Back".to_s)
  end
end
