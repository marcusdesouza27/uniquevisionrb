                                                                                   
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
  
  When("user creates a new account using existent email") do
    @login.new_userName
    @login.new_dupMail(DATA['user'])
    @login.new_birthdate
    @login.password(DATA['pwd'])
    @login.checkpwd(DATA['pwd'])
    @login.accept_therms
    @login.accept_subscribe
    @login.new_user_submit
  end

  Then("user sees alert message error") do                                    
    expect(@login.new_user_error).to have_content MESSAGE_ASSERT['dup_email']
  end

  When("user creates a new account without mandatories fields") do               
    @login.new_birthdate
    @login.accept_subscribe
    @login.new_user_submit
  end                                                                            
                                                                                 
  Then("user sees missing mandatories fields alert message") do                  
    expect(@login.new_user_error2).to have_content MESSAGE_ASSERT['newUser_mandatoryField']
  end                                                                            
                                                                                 