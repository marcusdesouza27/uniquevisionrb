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
    element :acceptTherms, :xpath, '/html/body/main/div[9]/div[2]/div/div[3]/div/div/div/div/div/form/div[2]/div[1]/div/div/input[1]'
    element :accepSubscribe, 'input[id="check-subscribe"]'
    element :btn_submit, '#btnCaptcha'
    element :new_user_error, '.logErrorGlobal__log--icon'
    
    def login(user, password)
        input_login.set(user)
        input_pwd.set(password)
    end

    def login_btn
        btn_sign.click
    end

    def new_userdata
        @fname = Faker::Name.first_name
        @lname = Faker::Name.last_name
        @email = "#{@fname}.#{@lname}@mailinator.com"
        @n_mail = @email.downcase
        @phoneNumber = Faker::Number.number(digits: 8)
        
        first_name.set(@fname)
        last_name.set(@lname)
        new_email.set(@n_mail)
        phone_number.set(@phoneNumber)
    end

    def new_birthdate
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
        # acceptTherms.make_visible
        find('class[name="control-label login-form-content__check--accept"]')
        acceptTherms.click
    end
    def accept_subscribe
        accepSubscribe.check
    end

    def new_user_submit
        btn_submit.click
    end
end