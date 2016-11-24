require 'spec_helper'

def sign_in_and_play
    visit "/"

    fill_in("player1_name",with: "Bill")
    fill_in("player2_name",with: "Foo")
    click_button "SUBMIT"
end
