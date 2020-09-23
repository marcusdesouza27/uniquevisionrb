When("user searchs for products") do
    @uvhome.search_paulina(DATA['product_search'])
  end
  
  Then("all products is displayed") do
    expect(@product_list.span_results).to have_content("Has buscado\"PAULINA\"")
  end

  When("user searchs for products without prescription") do
    @uvhome.search_paulina(DATA['prod_noprescription'])
    @result = (DATA['prod_noprescription'])
  end
  
  Then("this product is displayed") do
    expect(@product_list.span_results).to have_content("Has buscado\"#{@result}\"")
  end

  When("apply filter by size") do
    @product_list.size
  end