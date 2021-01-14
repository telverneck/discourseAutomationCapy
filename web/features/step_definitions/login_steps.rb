Dado('que tenho um email {string}') do |email|
    @email = email
    @senha = "Sidia@2021"
end  

Quando('eu submeto meu email') do
    visit "https://try.discourse.org"
    click_button 'Log In'
    find("#login-account-name").set @email
    find("#login-account-password").set @senha
    find("#login-button").click
    # click_button 'Log In'
end
  
Entao('devo ver a area de administracao') do
    # res = page.has_css?("label[for='email']")
    expect(page).to have_css("li#current-user img.avatar") 
end

Entao('devo ver uma mensagem de alerta {string}') do |message|
    @message = message
    alert = find(".alert-error")
    expect(alert).to have_text(@message) 
end