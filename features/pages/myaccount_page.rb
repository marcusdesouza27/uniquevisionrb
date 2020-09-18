class MyAccount <SitePrism::Page

    element :span_title, ".myAccount__title"
    element :span_hello, ".__all--opt > li:nth-child(1) > div:nth-child(1)"
    element :user_hello, ".str-menuMyAccount__name--PE"
    element :icon_profile, "div.js-:nth-child(2) > nav:nth-child(1) > li:nth-child(1) > div:nth-child(1) > i:nth-child(1)"
    element :link_profile, '.js-mobile-click-profile'
    element :icon_myCards, '.icon-card'
    element :link_myCards, 'a[title="Tarjetas"]'
    element :icon_myOrders, '.icon-box'
    element :link_myOrders, 'a[title="Historial de Compras"]'
    element :icon_addresses, '.icon-book'
    element :link_addresses, 'a[title="Mis Direcciones"]'
    element :icon_wishlist, '.icon-wishlist'
    element :link_wishlist, 'a[title="Favoritos"]'
    element :icon_myCash, '.icon-cash'
    element :link_myCash, 'a[title="Mis créditos"]'
    element :icon_closeSection, '.icon-log-out'
    element :link_closeSection, '.__all--opt > li:nth-child(3) > div:nth-child(1) > a:nth-child(2)'

    def myaccount_elements
        span_title.hover
        span_hello.hover
        user_hello.hover
        icon_profile.hover
        link_profile.hover
        icon_myCards.hover
        link_myCards.hover
        icon_myOrders.hover
        link_myOrders.hover
        icon_addresses.hover
        link_addresses.hover
        icon_wishlist.hover
        link_wishlist.hover
        icon_myCash.hover
        link_myCash.hover
        icon_closeSection.hover
        link_closeSection.hover
    end

    def profile_menu
        link_profile.click
    end
    def myCards_menu
        link_myCards.click
    end

    def orderHistory_menu
        icon_myOrders.click
    end

    def addressBook_menu
        icon_addresses.click
    end

    def wishList_menu
        icon_wishlist.click
    end

    def myCredits_menu
        link_myCredits
    end

    def logout_menu
        icon_closeSection.click
    end

    
end