Then("I verify all elements on page") do
    @myaccount.myaccount_elements
  end

  When("edits your data") do
    @myaccount.profile_menu
    @profile.edit_name
  end
  
  Then("he sees the edit confirmation message") do
    pending # Write code here that turns the phrase above into concrete actions
  end