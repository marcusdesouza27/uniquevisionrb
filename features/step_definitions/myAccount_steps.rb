Then("I verify all elements on page") do
    @myaccount.myaccount_elements
  end

  When("user clicks on Profile option") do
    @myaccount.profile_menu
  end

  When("edits your name and lastname") do
    # @profile.edit_name_open
    # @profile.edit_name(DATA['new_name'], DATA['new_lastname'])
    # @profile.submit_btn
  end
 
  When("edits your email") do
    @profile.edit_email_open
    @profile.edit_email(DATA['newEmail'], DATA['newEmail'], DATA['editUserPwd'])
    @profile.submit_btn
  end
  
  When("edits your password") do
    @profile.edit_pwd_open
    @profile.edit_pwd(DATA['editUserPwd'], DATA['newPwd'], DATA['newPwd'])
    @profile.submit_btn
  end

  When("restores older name and lastname") do
    # @profile.edit_name_open
    # @profile.edit_name(DATA['edit_name'], DATA['edit_lastname'])
    # @profile.submit_btn
  end

  When("restores your email") do
    @profile.edit_email_open
    @profile.edit_email(DATA['editUser'], DATA['editUser'], DATA['newPwd'])
    @profile.submit_btn
  end
  
  When("restores your password") do
    @profile.edit_pwd_open
    @profile.edit_pwd(DATA['newPwd'], DATA['editUserPwd'], DATA['editUserPwd'])
    @profile.submit_btn
  end

  Then("he sees the edit confirmation message") do
    expect(@profile.alert_sucess).to have_content MESSAGE_ASSERT['edit_success']
  end

  When("user clicks in My Credits Cards menu") do                                                  
    @myaccount.myCards_menu
  end                                                                                              
                                                                                                   
  Then("sees no credit cards alert") do                                                            
    expect(@cards.nocredits_alert).to have_content MESSAGE_ASSERT['alert_cards']
  end                                                                                              