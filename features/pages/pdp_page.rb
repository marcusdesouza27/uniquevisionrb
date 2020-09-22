class ProductDetailPage < SitePrism::Page
    element :product_name, '.name'
    element :product_summary, 'div.col-xs-12.col-md-5.col-lg-5 > section.product-main-info > div:nth-child(1) > div > div > div.description > span'
    element :strike_price, 'span[itemprop="priceCurrency"]'
    element :price, 'span[itemprop="price"]'
    element :button_buyNow, 'div[class="btn"]'
    element :button_tryNow, 'div[data-target="#modalPdpVirtualTryOn"]'
    element :button_addToBag, '#addToCartButton'
    element :opt_pink, 'div:nth-child(1) > div > div > div.variant-product.hide--mobile > div > div > ul > div.owl-stage-outer > div > div:nth-child(1) > li > a'
    element :opt_green, 'div:nth-child(1) > div > div > div.variant-product.hide--mobile > div > div > ul > div.owl-stage-outer > div > div:nth-child(2) > li > a'
    element :opt_yellow, 'div:nth-child(1) > div > div > div.variant-product.hide--mobile > div > div > ul > div.owl-stage-outer > div > div:nth-child(3) > li > a'
    element :opt_grey, 'div:nth-child(1) > div > div > div.variant-product.hide--mobile > div > div > ul > div.owl-stage-outer > div > div:nth-child(4) > li > a'
    element :opt_red, 'div:nth-child(1) > div > div > div.variant-product.hide--mobile > div > div > ul > div.owl-stage-outer > div > div:nth-child(5) > li > a'
    element :opt_blue, 'div:nth-child(1) > div > div > div.variant-product.hide--mobile > div > div > ul > div.owl-stage-outer > div > div:nth-child(6) > li > a'
    element :span_size, 'div.col-xs-12.col-md-5.col-lg-5 > section.product-main-info > div:nth-child(1) > div > div > div.talla.hide--mobile'
    element :link_seeComents, '.link-review'
    element :product_description, 'p[itemprop="description"]'
    element :icon_favorite, '.icon-wishlist-pdp '
    element :span_favorite, '.wishProdPdp__message'
    element :icon_shareMail, '.js-buttonModalSendEmail'
    element :icon_shareFacebook, '.icon-fill-facebook'
    element :icon_moreInfo, 'a[href="#content-3"]'
    element :img_product, :xpath, '/html[1]/body[1]/main[1]/div[9]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[4]/section[1]/div[3]/div[1]/div[1]/div[1]/a[1]/img[1]'
    element :opt_mountOnly, 'div[data-lens-type="FRAME_ONLY"]'
    element :opt_noMeasure, 'div[data-lens-type="NO_MEASURE"]'
    element :opt_far, 'div[data-lens-type="FAR"]'
    element :opt_near, 'div[data-lens-type="NEAR"]'
    element :spanSubtotal, 'div.col-xs-6.col-sm-6.col-md-6.no-padding.sub'
    element :spanSubtotalPrice, '.js-product-price-lens'
    element :button_addToCart_lenses, '.js-show-popup'
    element :opt_set_prescription, 'div[class*="js-menu-upload-form js-open-form-desc"]' #'.js-open-form-desc'
    element :opt_attach_prescription, 'div[class*="js-menu-upload-form js-open-upload-desc"]'# '.js-open-upload-desc'
    element :rightSphere, 'select[name="rightSphere"]'
    element :leftSphere, 'select[name="leftSphere"]'
    element :rightCylinder, 'select[class="js-rightCylinder"]'
    element :leftCylinder, 'select[class="js-leftCylinder"]'
    element :rightAxis, 'select[class="js-rightAxis"]'
    element :leftAxis, 'select[class="js-leftAxis"]'
    element :rightAddition, 'select[class="js-rightAddition"]'
    element :leftAddition, 'select[class="js-leftAddition"]'
    element :interpupilarDistance, 'select[name="interpupilarDistance"]'
    element :condCheck_prescription, 'label[for="condCheck"]'
    element :button_attachPrescription, 'input[id="attachmentPrescFiles"]' #'input[name="files"]'
    element :btnStepPresc, '.js-btnStepPresc'
    element :basic_lens, 'div[data-id="360001"]'
    element :plus_lens, 'div[data-id="360002"]'
    element :plusUV_lens, 'div[data-id="360003"]'
    element :premium_lens, 'div[data-id="360004"]'

    def click_buyNow
        button_buyNow.click
        wait_until_spanSubtotal_visible
    end

    def click_tryNow
        wait_until_button_tryNow_visible
        button_tryNow.click
    end

    def click_addCart
        wait_until_button_addToBag_visible
        button_addToBag.click
    end

    def lens_mountOnly
        wait_until_opt_mountOnly_visible
        opt_mountOnly.click
    end

    def lens_noMeasure
        wait_until_opt_noMeasure_visible
        opt_noMeasure.click
    end

    def lens_far
        wait_until_opt_far_visible
        opt_far.click
    end

    def lens_near
        wait_until_opt_near_visible
        opt_near.click
    end

    def setPrescription
        opt_set_prescription.click
        rightSphere.send_keys('-1.75')
        rightCylinder.send_keys('-1.00')
        rightAxis.send_keys('8')
        rightAddition.send_keys('+0.25')
        leftSphere.send_keys('-1.25')
        leftCylinder.send_keys('-1.00')
        leftAxis.send_keys('8')
        leftAddition.send_keys('+0.25')
        interpupilarDistance.send_keys('45')
    end

    def attPrescription
        opt_attach_prescription.click
        button_attachPrescription.make_visible
        attach_file(button_attachPrescription, "spec/files/prescription.jpg")
    end

    def prescriptionCheck
        condCheck_prescription.click
    end

    def btnMoreOneStep
        wait_until_btnStepPresc_visible
        btnStepPresc.click
    end
    

    def basicLensOpt
        wait_until_basic_lens_visible
        basic_lens.click
    end

    def plusLensOpt
        wait_until_plus_lens_visible
        plus_lens.click
    end

    def plusUVLensOpt
        wait_until_plusUV_lens_visible
        plusUV_lens.click
    end

    def premiumLensOpt
        wait_until_premium_lens_visible
        premium_lens.click
    end

    def lens_addToCart
        wait_until_button_addToCart_lenses_visible
        button_addToCart_lenses.click
    end
end