Dado('que tenho um email {string}') do |email|
    #Email and Password must be reseted before the test
    @email = email
    @senha = "Sidia@2021"
end  

Quando('eu submeto meu email') do
    @login.login(@email, @senha)
   
end
  
Entao('devo ver a area de administracao') do
    expect(@login.contains?).to be true   
end

Entao('devo ver uma mensagem de alerta {string}') do |message|
   
    expect(@login.alert).to have_text(message) 
end