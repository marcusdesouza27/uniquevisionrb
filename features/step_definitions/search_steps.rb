When("user searchs for products") do
    @uvhome.search_paulina(DATA['product_search'])
  end
  
  Then("all products is displayed") do
    expect(@product_list.span_results).to have_content("Has buscado\"PAULINA\"")
  end