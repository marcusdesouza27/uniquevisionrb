When("user opens a no prescription product PDP") do
  @productCode = (DATA['prod_noprescription'])
  @productName = (DATA['prod_noprescriptionName'])
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

When("user opens product with prescription PDP") do
  @productCode = (DATA['prod_presciption'])
  @productName = (DATA['prod_prescriptionName'])
  visit "/p/#{@productCode}"
end

Then("sees button Buy Now") do
  expect(@pdp.button_buyNow).to have_content('COMPRAR AHORA')
end

When("user opens a product with tryon PDP") do
  @productCode = (DATA['prod_tryon'])
  @productName = (DATA['prod_tryonName'])
  visit "/p/#{@productCode}"
end

Then("sees button Try Now") do
  expect(@pdp.button_tryNow).to have_content('¡PRUÉBATELO AHORA!')
end