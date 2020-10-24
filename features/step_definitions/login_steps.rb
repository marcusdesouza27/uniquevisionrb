When('User acces My Account page') do
  @homepage.login_reg
end

When('user proceeds login') do
  @login.login(DATA['user'], DATA['pwd'])
  @login.login_btn
end

When("user proceeds login as user to edit") do
  @login.login(DATA['editUser'], DATA['editUserPwd'])
  @login.login_btn
end

Then('sees logged page user') do
  expect(page).to have_content(DATA['user'])
end

When("user proceeds login as edited user") do
  @login.login(DATA['newEmail'], DATA['newPwd'])
  @login.login_btn
end

When('user proceeds login with unexistent email') do
  @login.login(DATA['inv_user'], DATA['pwd'])
  @login.login_btn
end

Then('sees an alert error') do
  expect(@login.div_alert_login).to have_content MESSAGE_ASSERT['login_fail']
end

When("user proceeds login with invalid password") do
  @login.login(DATA['inv_user'], DATA['pwd'])
  @login.login_btn
end

When("user proceeds login without fill fields") do
  @login.login_btn
end
