class LoginPage < SitePrism::Page
    element :input_login, "#j_username"
    element :input_pwd, "#j_password"
    element :icon_showpwd, :xpath, "//div[contains(@class,'form-label-transition relative')]//i[contains(@class,'fa customer-eye-show icon-eye')]"
    element :link_forgetpwd, ".js-password-forgotten"
    element :btn_sign, '#btn-login'
    element :div_alert_login, :xpath, "//div[contains(@class,'login-form-content__message--text')]"
    element :first_name, 'input[name="firstName"]'
    element :last_name, 'input[name="lastName"]'
    element :new_email, 'input[name="email"]'
    element :phone_country, '#flagstrap-drop-down-vugh8Hrz'
    element :phone_number,  'input[name="phoneNumber"]'
    element :dn_day, 'select[name="day"]'
    element :dn_month, 'select[name="month"]'
    element :dn_year, 'select[name="year"]'
    element :new_pwd, '#password'
    element :check_pwd, 'input[name="checkPwd"]'
    element :acceptTherms, 'label[for="check-accept"]'
    element :accepSubscribe, 'label[for="check-subscribe"]'
    element :btn_submit, '#btnCaptcha'
    element :new_user_error, :xpath, "/html[1]/body[1]/main[1]/div[9]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[4]/div[2]"
    element :new_user_error2, :xpath, "/html[1]/body[1]/main[1]/div[9]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[2]"
    
    def login(user, password)
        input_login.set(user)
        input_pwd.set(password)
    end

    def login_btn
        btn_sign.click
    end

    def new_userName
        @fname = Faker::Name.first_name
        @lname = Faker::Name.last_name
        first_name.set(@fname)
        last_name.set(@lname)
    end

    def new_userMail
        @email = "#{@fname}.#{@lname}@ruby.com"
        @n_mail = @email.downcase
        new_email.set(@n_mail)
    end
    def new_dupMail(email)
        new_email.set(email)
    end

    def new_birthdate
        @phoneNumber = Faker::Number.number(digits: 8)
        phone_number.set(@phoneNumber)
        dn_day.find('option', text: '30').select_option
        dn_month.find('option', text: 'Marzo').select_option
        dn_year.find('option', text: '1980').select_option
    end

    def password (novasenha)
        new_pwd.set(novasenha)
    end

    def checkpwd (confpwd)
        check_pwd.set(confpwd)
    end

    def accept_therms
        page.execute_script('window.scrollTo(0, 500)')
        # binding.pry
      
        acceptTherms.click
    end
    def accept_subscribe
        accepSubscribe.click
    end

    def new_user_submit
        btn_submit.click
    end
end