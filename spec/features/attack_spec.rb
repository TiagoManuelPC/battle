feature 'Attaking' do
  scenario 'attack player 2 ' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Charlotte attacked Mittens'
  end
  scenario 'reduce player 2 hp' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).to_not have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end
end