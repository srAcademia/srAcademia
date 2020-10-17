Given('Um usuario administrador existe') do
  Usuario.create(nome: 'admin', email: 'admin@example.com', telefone: '8799999999', data_nascimento: Date.new(1999, 9, 9), password: 'password', password_confirmation: 'password', tipo: 2)
end

And('Eu estou logado como administrador com email {string} e senha {string}') do |email, senha|
  visit "/sign_in"
  fill_in 'session[email]', :with => email
  fill_in 'session[password]', :with => senha
  click_button 'Entrar'
  expect(page).to have_content('Admin')
end

And('Eu estou na pagina administrar usuarios') do
  click_link 'Administrar outros usuarios'
end

And('Eu clico em novo usuario') do
  click_link 'Novo Usuário'
end

And('Eu preencho o nome com {string}, o email {string}, o telefone {string}, a data_nascimento {string}, a password {string}, a password_confirmation {string} e o tipo {string}') do |nome, email, telefone, data_nascimento, senha, confirme_senha, tipo|
  fill_in 'usuario[nome]', :with => nome
  fill_in 'usuario[email]', :with => email
  fill_in 'usuario[telefone]', :with => telefone
  fill_in 'usuario[data_nascimento]', :with => Date.parse(data_nascimento)
  fill_in 'usuario[password]', :with => senha
  fill_in 'usuario[password_confirmation]', :with => confirme_senha
  select tipo, :from => "Tipo"
end

And('Eu clico em criar novo usuario') do
  click_button 'Create'
end

Then('Eu vejo que o novo usuario com nome {string} foi salvo') do |nome|
  visit "/usuarios"
  expect(page).to have_content(nome)
end

Then('Eu vejo uma mensagem de usuario invalido') do
  assert_selector('div#error_explanation')
end

And('O usuario com o nome {string}, o email {string}, o telefone {string}, a data_nascimento {string}, a password {string}, a password_confirmation {string} e o tipo {string} existe') do |nome, email, telefone, data_nascimento, senha, confirme_senha, tipo|
  click_link 'Novo Usuário'
  fill_in 'usuario[nome]', :with => nome
  fill_in 'usuario[email]', :with => email
  fill_in 'usuario[telefone]', :with => telefone
  fill_in 'usuario[data_nascimento]', :with => Date.parse(data_nascimento)
  fill_in 'usuario[password]', :with => senha
  fill_in 'usuario[password_confirmation]', :with => confirme_senha
  select tipo, :from => "Tipo"
  click_button 'Create'
  expect(page).to have_content(nome)
end

When('Eu clico em remover usuario do tipo professor com nome {string}') do |nome|
  visit '/usuarios'
  click_link "d-#{nome}"
end

Then('Eu vejo que o usuario {string} nao se encontra mais entre os usuarios listados') do |nome|
  expect(page).to have_no_content(nome)
end

When('Eu clico em editar usuario com o nome {string}') do |nome|
  visit '/usuarios'
  click_link "e-#{nome}"
end

And('Eu clico no botao alterar') do
  click_button "Update"
end