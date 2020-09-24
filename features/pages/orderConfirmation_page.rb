class OrderConfirmation < SitePrism::Page
    element :title, 'div.checkout__title.checkout--confirmationPage__title > h1'
    element :label_order, 'div[class="col-xs-12 no-padding"]'
end