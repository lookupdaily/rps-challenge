def sign_in_and_play
  visit '/'
  fill_in 'name', with: 'Liz'
  click_on 'Submit'
end