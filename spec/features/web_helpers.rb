def sign_in_and_play
	visit "/"
    fill_in("player1", with: "Kim")
    fill_in("player2", with: "Mike")
    click_button("HADOKEN!!!!")
end