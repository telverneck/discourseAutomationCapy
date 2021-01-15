class LoginPage
    attr_reader :account_name, :password, :login_button, :avatar, 
    :login_access_button, :alertError
    
    include Capybara::DSL

    def initialize
        @account_name =  "#login-account-name"
        @password = "#login-account-password"
        @login_button = "#login-button"
        @avatar = "li#current-user img.avatar"
        @login_access_button = 'Log In'
        @alertError = ".alert-error"
    end

    def accessWebPage(page_title)
        visit page_title
    end

    def login(email, senha)
        click_button @login_access_button
        find(@account_name).set email
        find(@password).set senha
        find(@login_button).click
    end

    def contains?
        return page.has_css?(@avatar)
    end

    def alert
      return find(@alertError)
    end

end