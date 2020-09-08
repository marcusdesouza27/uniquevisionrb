Before do
    # page.current_window.resize_to(1400, 800)
    visit '/'
    # page_certification()
    
    @uvhome = UvHome.new
    @login = LoginPage.new
end

After do |scenario|
    screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
    embed(screenshot, "image/png", "Screenshot")
end