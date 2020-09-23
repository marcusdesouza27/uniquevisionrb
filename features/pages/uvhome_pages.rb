class UvHome < SitePrism::Page

    element :uvlogo, :xpath,  '//div[@class="banner__component banner"]//a//img'
    element :input_search, '#js-site-search-input'
    element :button_search, :xpath, "/html/body/main/header/nav[2]/div/div/div/div[5]/div[1]/div/div/div/div/form/div/div/button/i"
    element :icon_bag, :xpath, "//div[@class='icon-bag js-icon-bag js-losingAlert']"
    element :icon_profile, :xpath, "//div[@class='lnr icon-profile js-icon-user']"
    element :coockie_bar_acept, :xpath, "//a[@class='cookie-bar__btn-close']"
    element :div_coockie_bar, :xpath, "//div[@class='cookie-bar__wrapper']"

    def home
        uvlogo.click
    end

   

    def login_reg 
        icon_profile.click
    end

    def coockie_accept
        coockie_bar_acept.click
    end
    
    def search_paulina(product)
        input_search.set(product)
        button_search.click
    end
end