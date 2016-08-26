def sign_up (email: "newuser@somewhere.com", password: "12345678", password_confirmation: "12345678")
  visit '/'
  click_link 'Sign up'
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  fill_in 'Password confirmation', with: password_confirmation
  click_button 'Sign up'
end
