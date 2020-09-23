class SideCart < SitePrism::Page

    element :btn_sidecartClose, 'div[class="minCartc09__close"]'
    element :label_shipBag, 'div[class="minCartc09__title"]'
    element :btn_buyNow, 'a[id="js-actionSideBar-cart"]'
    element :span_SubtotalPrice, 'span[id="miniCartSub"]'
    element :icon_trash_0, 'i[data-entry="0"]'
    element :icon_trash_1, 'i[data-entry="1"]'
    element :thum_product, 'div[class="minCartc09__producList-img"]'
    element :input_qtdy, 'input[data-value="value-qty"]'
    element :btn_decQtdy, 'button[class="qty-selector__btn btn js-qty-selector-minus mini-cart-new-qty js-minus__btn"]'
    element :btn_addQtdy, 'button[class="qty-selector__btn btn js-qty-selector-plus mini-cart-new-qty js-plus__btn"]'
    
    def closeSideCart
        btn_sidecartClose.click
    end

    def buyNow
        btn_buyNow.click
    end

    def addAmmount
        btn_addQtdy.click
    end

    def decAmmount
        btn_decQtdy.click
    end

    def setAmmount(qtdy)
        input_qtdy.set(qtdy)
    end

    def removeItem
        icon_trash_0.click
    end
end