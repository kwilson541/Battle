require 'spec_helper'

RSpec.feature 'Send lose message', :type => :feature do
  scenario 'when a player loses we want a message to appear' do
    sign_in_and_play
    click_button("Attack!")
    click_button("Attack!")
    click_button("Attack!")
    click_button("Attack!")
    expect(page).to have_content("Kim is dead! Their HP hit 0!")
  end
end
