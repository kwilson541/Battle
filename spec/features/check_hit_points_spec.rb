require 'spec_helper'

RSpec.feature 'Check hit points', :type => :feature do
  scenario "check player2s hit points" do
    sign_in_and_play
    expect(page).to have_text('HP')
  end
end
