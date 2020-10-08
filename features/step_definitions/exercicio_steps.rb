Given ('Eu estou logado com email {string} e senha {string}') do |email, senha|
  visit "/"
  expect(page).to have_current_path("/")
  fill_in "session[nome]", :with => email
  fill_in "session[senha]", :with => senha
  click_button 'commit'
end

And('Eu estou na pagina de exercicios') do
  visit "/exercicios"
  expect(page).to have_current_path('/exercicios')
end

And('Eu clico no botao novo exercicio') do
  click_link 'Novo exercico'
  expect(page).to have_current_path('/exercicios/new')
end

When('Eu preencho o nome do exercico com {string} com grupo muscular {string} e descricao {string}') do |nome, gp_muscular, descricao|
  fill_in 'exercicio[nome]', :with => nome
  fill_in 'exercicio[grupo_muscular]', :with => gp_muscular
  fill_in 'exercicio[descricao]', :with => descricao
end

And(' Eu clico no botao de criar novo exercicio') do 
  click_button 'commit'
  expect(page).to have_current_path('/exercicios/' + id.to_s)
end

Then('Eu vejo que o exercicio de titulo {string} foi criado com sucesso') do |titulo|
  expect(page).to have_content(titulo)
  expect(page).to have_current_path(exercicios_path + '/' + Exercicios.last.id.to_s)
  click_link 'Voltar'
end

