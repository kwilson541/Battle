require 'spec_helper'

describe "Entering names", :type => :feature do

  before do
    visit "/"

    fill_in "player1_name", :with => "Bill"
    fill_in "player2_name", :with => "Foo"
    click_button "SUBMIT"
  end

  it "redirects to /play path" do
    expect(page.current_path).to eq("/play")
  end

  it "fills in name of player 1" do
    expect(page).to have_text("Bill")
  end

  it "fills in name of player 2" do
    expect(page).to have_text("Foo")
  end
end
