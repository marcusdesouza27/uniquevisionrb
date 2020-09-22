When("user opens a no prescription product PDP") do
  @productCode = (DATA['prod_noprescription'])
  @productName = (DATA['prod_noprescriptionName'])
  visit "/p/#{@productCode}"
end

When("user opens a product with tryon PDP") do
  @productCode = (DATA['prod_tryon'])
  @productName = (DATA['prod_tryonName'])
  visit "/p/#{@productCode}"
end

When("user opens product with prescription PDP") do
  @productCode = (DATA['prod_presciption'])
  @productName = (DATA['prod_prescriptionName'])
  visit "/p/#{@productCode}"
end

When("user opens product Paulina Red PDP") do                     
  @productCode = (DATA['paulina_red'])
  visit "/p/#{@productCode}"                                                                     
end

Then("user sees products information") do
  if @productCode == (DATA['prod_noprescription'])
    expect(@pdp.product_name).to have_content('Paulina Yellow')
    expect(@pdp.product_summary).to have_content('Paulina Yellow Summary')
  elsif @productCode == (DATA['prod_presciption'])
    expect(@pdp.product_name).to have_content('Paulina Pink')
    expect(@pdp.product_summary).to have_content('Paulina Pink Summary')
  elsif @productCode == (DATA['prod_tryon'])
    expect(@pdp.product_name).to have_content('Paulina Blue')
    expect(@pdp.product_summary).to have_content('Paulina Blue Summary')
  end
end

Then("sees button to add to bag") do
  expect(@pdp.button_addToBag).to have_content('AGREGAR A LA BOLSA')
end

Then("sees button Buy Now") do
  expect(@pdp.button_buyNow).to have_content('COMPRAR AHORA')
end

Then("sees button Try Now") do
  expect(@pdp.button_tryNow).to have_content('¡PRUÉBATELO AHORA!')
end

When("user clicks on Add to Bag button") do
  @pdp.click_addCart
end

When("clicks on Buy Now button") do
  @pdp.click_buyNow
end

When("user select Mount Only lens option") do
  @pdp.lens_mountOnly
end
When("user select No Measure lens option") do
  @pdp.lens_noMeasure
end

When("user select Far lens option") do
  @pdp.lens_far
end

When("user select Near lens option") do                                        
  @pdp.lens_near
end 

When("user add product to cart") do
  @pdp.lens_addToCart
end  

When("user sets prescription data") do
  @pdp.setPrescription
end

When("user selects Basics lens") do                                                  
  @pdp.basicLensOpt
end 

When("user selects PlusUV lens") do
  @pdp.plusUVLensOpt
end

When("user selects Premium lens") do
  @pdp.premiumLensOpt
end

When("user checks to confirm prescription") do
  @pdp.prescriptionCheck
  @pdp.btnMoreOneStep
end

Then("user sees minicart with added product") do
  puts('MiniCart - To develop')
end