                                                                                   
When("user creates a new account") do                                                                   
    @login.new_userName
    @login.new_userMail
    @login.new_birthdate
    @login.password(DATA['pwd'])
    @login.checkpwd(DATA['pwd'])
    @login.accept_therms
    @login.accept_subscribe
    @login.new_user_submit
  end                                                                                
                                                                                     
  Then("he see your email on my account page") do                                    
    expect(@profile.span_email).to have_content(@n_mail)
  end                                                                                