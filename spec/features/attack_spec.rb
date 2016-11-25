require 'spec_helper'

describe "Attack" do
  it "should redirect to /attack" do
    sign_in_and_play
    click_button "Attack"
    expect(page.current_path).to eq "/attack"
  end
  
end
