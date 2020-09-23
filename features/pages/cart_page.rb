class Cart < SitePrism::Page
    element :cart_title, 'div[class*="headerTitleCartNew"]'
    element :btn_buy, 'button[class*="js-disable-btn-cart"]'
    element :btn_keepBuying, 'div.hide--mobile > div > button'
    element :input_trooupeCode, 'div[name="visionario-code"]'
    element :input_cuponCode, 'div[name="voucher-code"]'
    element :input_qtdy, :xpath, "/html/body/main/div[9]/div[3]/div/div[2]/div[1]/div/div[1]/ul/div/div[1]/li/div[6]/div/div/div/input"
    element :btn_addQtdy, :xpath, "/html[1]/body[1]/main[1]/div[9]/div[3]/div[1]/div[2]/div[1]/div[1]/div[1]/ul[1]/div[1]/div[1]/li[1]/div[6]/div[1]/div[1]/div[1]/span[2]/button[1]/i[1]"
    element :btn_decQtdy, :xpath, "/html[1]/body[1]/main[1]/div[9]/div[3]/div[1]/div[2]/div[1]/div[1]/div[1]/ul[1]/div[1]/div[1]/li[1]/div[6]/div[1]/div[1]/div[1]/span[1]/button[1]/i[1]"
    element :icon_trash, :xpath, "/html[1]/body[1]/main[1]/div[9]/div[3]/div[1]/div[2]/div[1]/div[1]/div[1]/ul[1]/div[1]/div[1]/li[1]/div[11]/div[1]/div[1]/i[1]"

    def cartSubmit
        btn_buy.click
    end

    def backHome
        btn_keepBuying.click
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
        icon_trash.click
    end
end