class UvHome < SitePrism::Page

    element :uvlogo, :xpath,  '//div[@class="banner__component banner"]//a//img'
    element :input_search, '#js-site-search-input'
    element :icon_bag, :xpath, "//div[@class='icon-bag js-icon-bag js-losingAlert']"
    element :icon_profile, :xpath, "//div[@class='lnr icon-profile js-icon-user']"
    element :coockie_bar_acept, :xpath, "//a[@class='cookie-bar__btn-close']"
    element :div_coockie_bar, :xpath, "//div[@class='cookie-bar__wrapper']"

    def home
        uvlogo.click
    end

    def input_search
        input_search.click
    end

    def login_reg 
        icon_profile.click
    end

    def coockie_accept
        coockie_bar_acept.click
    end
end