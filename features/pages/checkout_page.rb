class Checkout < SitePrism::Page
    element :label_oderSummary, 'div.checkout-summary-headline.checkout-summary-headline--without-border'
    
    #Step one
    element :btn_addressBook, 'button[class*="js-address-book"]'
    element :btn_selectSavedAddress, 'div:nth-child(2) > form > button'
    element :chekBox_addNewAddress, 'label[for="ck1"]'
    element :btn_stepOneContinue, 'button[class*="checkout-indent__button--black"]'

    # Step two
    element :opt_normal, 'label[for="normal-uv"]'
    element :opt_express, 'label[for="express-uv"]'
    element :btn_stepTwoContinue, 'button[id="deliveryMethodSubmit"]'
    
    # Step three
    element :card_name, 'input[id="card-holder"]'
    element :card_Number, '#card-field-pan'
    element :card_expiration, 'input[name="expiration"]'
    element :card_cvv, 'div[id="cvv-input-container"]'
    element :check_saveCard, 'label[for="savedCard"]'
    element :btn_savedCards, 'button[class*="js-saved-payments"]'
    element :firstCard, :xpath, "/html[1]/body[1]/div[3]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/button[1]" 
    element :noPresc_docType, 'select[id="receiptDocumentType"]'
    element :noPresc_docNumber, 'input[id="receiptDocumentNumber"]'
    element :btn_stepThreeContinue, 'button[id="dlocal-payment-submit"]'

    # Step four
    element :btn_stepFourSubmit, '#placeOrderBtn'

    def stepOneSubmit
        wait_until_btn_stepOneContinue_visible
        btn_stepOneContinue.click
    end

    def deliveryExp
        wait_until_opt_express_visible
        opt_express.click
    end

    def stepTwoSubmit
        wait_until_btn_stepTwoContinue_visible
        btn_stepTwoContinue.click
    end

    def selectCard
        wait_until_btn_savedCards_visible
        btn_savedCards.click
        wait_until_firstCard_visible
        firstCard.click
    end

    def newCard
        wait_until_card_name_visible
        card_name.send_keys('Visa')
        card_Number.send_keys('4111111111111111')
        card_expiration.send_keys('1123')
        card_cvv.send_keys('123')
    end

    def stepthreeDNI
        wait_until_noPresc_docNumber_visible
        noPresc_docType.send_keys('DNI')
        noPresc_docNumber.send_keys('25412586')
    end
    
    def stepThreeSubmit
        wait_until_btn_stepThreeContinue_visible
        btn_stepThreeContinue.click
    end

    def stepFourSubmit
        wait_until_btn_stepFourSubmit_visible
        btn_stepFourSubmit.click
    end

    def openAddresses
        wait_until_btn_addressBook_visible
        btn_addressBook.click
    end

    def selecSecondtAddress
        wait_until_btn_selectSavedAddress_visible
        btn_selectSavedAddress.click
    end

    def checkAddNewAddress
        wait_until_chekBox_addNewAddress_visible
        chekBox_addNewAddress.click
    end
end