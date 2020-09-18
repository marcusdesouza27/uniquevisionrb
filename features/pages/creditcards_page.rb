class CreditCards < SitePrism::Page
    element :nocredits_alert, :xpath, "/html[1]/body[1]/main[1]/div[9]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]"
    element :div_creditCard, :xpath, "/html[1]/body[1]/main[1]/div[9]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]"
    element :title_creditCards, "/html[1]/body[1]/main[1]/div[9]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]"

    
end