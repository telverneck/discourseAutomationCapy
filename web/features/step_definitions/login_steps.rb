Dado('que tenho um email {string}') do |email|
    @email = email
    @senha = "Sidia@2021"
  end
  
Dado('acesso a pagina de Login') do
    visit "https://try.discourse.org"
end

Dado('que tenho um email invalido') do
    pending # Write code here that turns the phrase above into concrete actions
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

Entao('devo ver uma mensagem de alerta') do
    expect(page).to have_css(".alert-error") 

  end