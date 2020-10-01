class UvHome < SitePrism::Page

    element :uvlogo, :xpath,  'img[alt="UniqueVision Logo"]'
    element :input_search, '#js-site-search-input'
    element :button_search, :xpath, "/html/body/main/header/nav[2]/div/div/div/div[5]/div[1]/div/div/div/div/form/div/div/button/i"
    element :icon_bag, :xpath, "//div[@class='icon-bag js-icon-bag js-losingAlert']"
    element :icon_profile, :xpath, "//div[@class='lnr icon-profile js-icon-user']"
    element :coockie_bar_acept, :xpath, "//a[@class='cookie-bar__btn-close']"
    element :div_coockie_bar, :xpath, "//div[@class='cookie-bar__wrapper']"
    element :eyewear_menu, 'li:nth-child(2) > span.yCmsComponent.nav__link.js_nav__link > a'
    element :sunglasses_menu, 'a[title="Sunglasses"]'
    element :breadcrumb, 'div.breadcrumb-section > div > ol'
    element :goodClub_menu, 'a[title="THE GOOD CLUB"]'

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

    def catEyes
        eyewear_menu.click
    end

    def sunwear
        sunglasses_menu.click
    end

    def goodClube
        goodClub_menu.click
    end
end