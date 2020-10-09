Given('Eu estou na pagina de exercicios') do
  visit '/exercicios'
  expect(page).to have_current_path('/exercicios')
end

And('Eu clico no botao novo exercicio') do
  click_link 'Novo Exercicio'
  expect(page).to have_current_path('/exercicios/new')
end

When('Eu preencho o nome do exercico com {string} com grupo muscular {string} e descricao {string}') do |nome, gp_muscular, descricao|
  fill_in 'exercicio[nome]', :with => nome
  fill_in 'exercicio[grupo_muscular]', :with => gp_muscular
  fill_in 'exercicio[descricao]', :with => descricao
  click_button 'commit'
end

Then('Eu vejo que o exercicio de titulo {string} foi criado com sucesso') do |titulo|
  expect(page).to have_content(titulo)
  click_link 'Voltar'
end
