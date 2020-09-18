class ProductList < SitePrism::Page
    element :span_results, '.searchResults'
    element :filter, 'div.select-facet-c07.js-click-selec-facet'
    element :filter_M, 'input[name="redirect"]'
    element :filer_relevance, '#sortOptions2'


    def size
        filter.click
        filter_M.click
    end
end