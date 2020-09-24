Then("sees checkout page") do
    expect(@checkout.label_oderSummary).to have_content('RESUMEN DE COMPRA')
end

When("user forwards Step one") do
    @checkout.stepOneSubmit
end

When("user confirms Step two") do
    @checkout.deliveryExp
    @checkout.stepTwoSubmit
end

When("user sets payment info") do
    @checkout.selectCard
    @checkout.stepthreeDNI
    @checkout.stepThreeSubmit    
end

When("user confirms place order") do
    @checkout.stepFourSubmit
end

Then("user sees order confirmation page") do
    @confirmation.confirmLoad
    expect(@confirmation.title).to have_content('Order Confirmation')
    # expect(@confirmation.title).to have_content('HAS REALIZADO CON ÉXITO TU COMPRA')
    expect(@confirmation.label_order).to have_content('RESUMEN DE COMPRA')
end