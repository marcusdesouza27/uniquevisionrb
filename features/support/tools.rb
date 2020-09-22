def page_certification
    
    if page.has_css?('#details-button')
        find('#details-button').click
        find('#proceed-link').click        
      else
        sleep 0.1
     end

end

def closeSession
   Capybara.current_session.driver.quit
   # restart Selenium driver
  # page.execute_script 'window.close;'
  # Capybara.send(:session_pool).delete_if { |key, _value| key =~ /selenium/i }
end