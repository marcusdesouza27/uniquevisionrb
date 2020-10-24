When('I access Unique Vision Homepage') do
    @homepage.coockie_accept
  end
  
  Then('I see Homepage loaded') do
   sleep 1
  end
                                                                                   
  When("user clicks on menu option Eyeglasses") do
    @homepage.catEyes
    @cen = 'CatEyes'
  end

  When("user clicks on menu option Sunglasses") do
    @homepage.sunwear
    @cen = 'Sunwear'
  end
  
  Then("sees his category page") do
    if @cen == 'CatEyes'
      expect(@homepage.breadcrumb).to have_content('EYEWEAR')
    elsif @cen == 'Sunwear'
      expect(@homepage.breadcrumb).to have_content('SUNEWAR')      
    end
  end
  