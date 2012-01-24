require 'spec_helper'

describe "index_cards/new" do
  before(:each) do
    assign(:index_card, stub_model(IndexCard,
      :title => "MyString",
      :front => "MyString",
      :back => "MyString"
    ).as_new_record)
  end

  it "renders new index_card form" do
    render

    rendered.should have_selector("form", :action => index_cards_path, :method => "post") do |form|
      form.should have_selector("input#index_card_title", :name => "index_card[title]")
      form.should have_selector("input#index_card_front", :name => "index_card[front]")
      form.should have_selector("input#index_card_back", :name => "index_card[back]")
    end
  end
end
