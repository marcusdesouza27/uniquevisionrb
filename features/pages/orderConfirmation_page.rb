class OrderConfirmation < SitePrism::Page
    element :title_conf, 'div.checkout__title.checkout--confirmationPage__title > h1'
    element :label_order, 'div[class="col-xs-12 no-padding"]'


    def confirmLoad
        wait_until_title_conf_visible
    end
end