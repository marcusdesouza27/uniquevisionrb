                                                                                   
When("user create a new register") do                                              
    @login.new_userdata
    @login.new_birthdate
    @login.password(DATA['pwd'])
    @login.checkpwd(DATA['pwd'])
    @login.accept_therms
    @login.accept_subscribe
    # sleep 10
    login.new_user_submit
  end                                                                                
                                                                                     
  Then("he see your email on my account page") do                                    
    pending # Write code here that turns the phrase above into concrete actions      
  end                                                                                