feature 'making moves' do
  before do
    sign_in_and_play
  end
  scenario 'player chooses move' do
    player_chooses_rock

    expect(page).to have_content('Liz played Rock')
  end

  scenario 'player asks for computer move' do
    srand(4)
    player_chooses_rock
    click_on 'See computer\'s move'
    
    expect(page).to have_content('Computer chooses scissors')
  end
end