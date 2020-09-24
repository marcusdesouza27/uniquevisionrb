class Cart < SitePrism::Page
    element :titleCart, 'div[class*="headerTitleCartNew"]'
    element :btn_buy, 'button[class*="js-disable-btn-cart"]'
    element :btn_keepBuying, 'div.hide--mobile > div > button'
    element :input_trooupeCode, 'div[name="visionario-code"]'
    element :input_cuponCode, 'div[name="voucher-code"]'
    element :input_qtdy, :xpath, "/html/body/main/div[9]/div[3]/div/div[2]/div[1]/div/div[1]/ul/div/div[1]/li/div[6]/div/div/div/input"
    element :btn_addQtdy, :xpath, "/html[1]/body[1]/main[1]/div[9]/div[3]/div[1]/div[2]/div[1]/div[1]/div[1]/ul[1]/div[1]/div[1]/li[1]/div[6]/div[1]/div[1]/div[1]/span[2]/button[1]/i[1]"
    element :btn_decQtdy, :xpath, "/html[1]/body[1]/main[1]/div[9]/div[3]/div[1]/div[2]/div[1]/div[1]/div[1]/ul[1]/div[1]/div[1]/li[1]/div[6]/div[1]/div[1]/div[1]/span[1]/button[1]/i[1]"
    element :icon_trash, :xpath, "/html[1]/body[1]/main[1]/div[9]/div[3]/div[1]/div[2]/div[1]/div[1]/div[1]/ul[1]/div[1]/div[1]/li[1]/div[11]/div[1]/div[1]/i[1]"

    def cartLoad
        wait_until_titleCart_visible
    end

    def cartSubmit
        wait_until_btn_buy_visible
        btn_buy.click
    end

    def backHome
        wait_until_btn_keepBuying_visible
        btn_keepBuying.click
    end

    def addAmmount
        wait_until_btn_addQtdy_visible
        btn_addQtdy.click
    end

    def decAmmount
        wait_until_btn_decQtdy_visible
        btn_decQtdy.click
    end

    def setAmmount(qtdy)
        wait_until_input_qtdy_visible
        input_qtdy.set(qtdy)
    end

    def removeItem
        wait_until_icon_trash_visible
        icon_trash.click
    end
end