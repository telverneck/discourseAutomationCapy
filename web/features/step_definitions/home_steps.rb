Quando('informo o texto de uma busca {string}') do |busca|
    @home.fillSearchFields(busca)    
end

Quando('efetuo a busca') do
    @home.search
end

Entao('devo ver o resultado encontrado') do
    expect(@home.containsResults?).to be true
end