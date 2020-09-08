def page_certification
    
    if page.has_css?('#details-button')
        find('#details-button').click
        find('#proceed-link').click        
      else
        sleep 0.1
     end

end