When("user clicks on continue button") do
    @cart.cartSubmit
  end

Then("user sees cart") do
  @cart.cartLoad
  expect(@cart.titleCart).to have_content('BOLSA DE COMPRAS')
end