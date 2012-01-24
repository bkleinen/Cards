require 'spec_helper'

describe "index_cards/edit" do
  before(:each) do
    @index_card = assign(:index_card, stub_model(IndexCard,
      :title => "MyString",
      :front => "MyString",
      :back => "MyString"
    ))
  end

  it "renders the edit index_card form" do
    render

    rendered.should have_selector("form", :action => index_card_path(@index_card), :method => "post") do |form|
      form.should have_selector("input#index_card_title", :name => "index_card[title]")
      form.should have_selector("input#index_card_front", :name => "index_card[front]")
      form.should have_selector("input#index_card_back", :name => "index_card[back]")
    end
  end
end
