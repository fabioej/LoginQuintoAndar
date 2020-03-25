Dado("que o acesso o site do quinto andar e clico em Entrar") do
    visit 'https://www.quintoandar.com.br/'
    click_link "Entrar"
end
  
Então("vejo a seguinte mensagem {string}") do |mensagem|
    expect(page).to have_text mensagem
end
  
Quando("eu clico em {string}") do |endereco|
    @link = find_link(endereco)[:href]
end
  
Entao("o link deve ser {string}") do |string|
    expect(@link).to have_text string
end

Quando("clico no botão {string}") do |confirmar|
    click_button confirmar
end

Dado("que os numeros de area e do celular fornecidos são:") do |table|
    @tel = table.hashes
end

Entao("clico em {string} e vejo a seguinte mensagem {string}") do |confirmar, mensagem|
    @tel.each do |t|
        fill_in('ddd', with: t['cod_area'])
        fill_in('phone', with: t['numero'])
        click_button confirmar
        expect(page).to have_text mensagem
     end
end