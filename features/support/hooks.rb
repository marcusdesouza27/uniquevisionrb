Before do
    # page.current_window.resize_to(1400, 800)
    Capybara.page.driver.browser.manage.window.maximize
    visit '/'
    # page_certification()
    
    @uvhome = UvHome.new
    @login = LoginPage.new
    @myaccount = MyAccount.new
    @profile = MyProfile.new
    @cards = CreditCards.new
    @product_list = ProductList.new
    @pdp = ProductDetailPage.new
end

After do |scenario|
    screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
    embed(screenshot, "image/png", "Screenshot")

    closeSession()
end