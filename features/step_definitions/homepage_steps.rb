When('I access Unique Vision Homepage') do
    @uvhome.coockie_accept
  end
  
  Then('I see Homepage loaded') do
   sleep 1
  end
                                                                                   
  When("user clicks on menu option Eyeglasses") do
    @uvhome.catEyes
    @cen = 'CatEyes'
  end

  When("user clicks on menu option Sunglasses") do
    @uvhome.sunwear
    @cen = 'Sunwear'
  end
  
  Then("sees his category page") do
    if @cen == 'CatEyes'
      expect(@uvhome.breadcrumb).to have_content('EYEWEAR')
    elsif @cen == 'Sunwear'
      expect(@uvhome.breadcrumb).to have_content('SUNEWAR')      
    end
  end
  