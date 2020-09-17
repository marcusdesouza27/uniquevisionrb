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
    element :btn_edit_email, 'div.estr-newProfile > div > ul > li.alert-email-profile.hide--mobile > div'
    element :btn_edit_pwd, 'div.col-md-9.col-xs-12 > div > div > div.estr-newProfile > div > ul > li:nth-child(4) > div'
    element :back_profile, '.form-all-account__btnBack > a:nth-child(1) > span:nth-child(1)'
    element :btn_submit, '.form-all-account__btnSave > button:nth-child(1)'
    element :alert_sucess, 'div.messageMyAccont.mma-space-profile'
    #end profile

    #edit_name
    element :editName_title, '.myAccount__title'
    element :input_name, 'input[name="firstName"]'
    element :input_lastname, 'input[name="lastName"]'
    #end_edit_name

    #edit email
    element :edit_email_title
    element :new_email, 'input[name="email"]'
    element :conf_email, 'input[name="chkEmail"]'
    element :email_password, 'input[name="password"]'
    #end edit email

    #edit password
    element :current_password,'input[name="currentPassword"]'
    element :new_password,'input[name="newPassword"]'
    element :check_password,'input[name="checkNewPassword"]'
    #end edit password

    def edit_name_open
        wait_until_btn_edit_name_visible
        btn_edit_name.click
    end

    def edit_email_open
        wait_until_btn_edit_email_visible
        btn_edit_email.click
    end

    def edit_pwd_open
        wait_until_btn_edit_pwd_visible
        btn_edit_pwd.click
    end
    
    def edit_name(name, password)
        input_name.set(name)
        input_lastname.set(password)
    end

    def edit_email(email, newEmail, password)
        new_email.set(email)
        conf_email.set(newEmail)
        email_password.set(password)
    end

    def edit_pwd(currenrpwd, newpwd, chckpwd)
        current_password.set(currenrpwd)
        new_password.set(newpwd)
        check_password.set(chckpwd)
    end 

    def submit_btn
        btn_submit.click
    end

 
end