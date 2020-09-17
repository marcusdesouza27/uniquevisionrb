class MyProfile < SitePrism::Page
    #profile
    element :label_name, 'li:nth-child(1) > p:nth-child(3)'
    element :label_lastname, 'li:nth-child(1) > p:nth-child(6)'
    element :span_name, 'li:nth-child(1) > span:nth-child(4)'
    element :span_lastname, 'li:nth-child(1) > span:nth-child(7)'
    element :label_email, 'li.alert-email-profile:nth-child(2) > p:nth-child(2)'
    element :span_email, 'li.alert-email-profile:nth-child(2) > span:nth-child(3)'
    element :label_password, ''
    element :btn_edit_name, :xpath, "/html/body/main/div[9]/div[2]/div/div[2]/div/div/div[2]/div/div/div[1]/div/ul/li[1]/div/a/button"
    element :btn_edit_email, 'a:nth-child(1) > button:nth-child(1)'
    element :btn_edit_pwd, 'a:nth-child(1) > button:nth-child(1)'
    element :back_profile, '.form-all-account__btnBack > a:nth-child(1) > span:nth-child(1)'
    element :btn_submit, '.form-all-account__btnSave > button:nth-child(1)'
    #end profile

    #edit_name
    element :editName_title, '.myAccount__title'
    element :input_name, '#profile\.firstName'
    element :input_lastname, '#profile\.lastName'
    #end_edit_name



    def edit_name
        btn_edit_name.click
    end

    def edit_email
        btn_edit_email.click
    end

    def edit_pwd
        btn_edit_pwd.click
    end
    
    def edit_name
        input_name.send_keys('Edited Name')
        input_lastname.send_keys('Edited LastName')
    end
end