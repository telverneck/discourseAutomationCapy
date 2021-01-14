Dado('que tenho um email valido') do
    @email = "telverneck@hotmail.com"
    @senha = "Sidia@2021"
end
  
Dado('acesso a pagina de Login') do
    visit "https://try.discourse.org"
end
  
Quando('eu submeto meu email') do
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