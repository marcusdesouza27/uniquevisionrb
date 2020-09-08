When('User acces login page') do
  @uvhome.login_reg
end

When('User proceed login') do
  @login.login(DATA['user'], DATA['pwd'])
  @login.login_btn
end

Then('I see logged page user') do
  expect(page).to have_content(DATA['user'])
end

When('User proceed login with unexistent email') do
  @login.login(DATA['inv_user'], DATA['pwd'])
  @login.login_btn
end

Then('I see an alert error') do
  expect(@login.div_alert_login).to have_content MESSAGE_ASSERT['login_fail']
end

When("User proceed login with invalid password") do
  @login.login(DATA['inv_user'], DATA['pwd'])
  @login.login_btn
end

When("User proceed login without fill fields") do
  @login.login_btn
end
