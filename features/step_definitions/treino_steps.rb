And('Um aluno de nome {string}, email {string}, telefone {string}, data_nascimento {string}, password {string}, password_confirmation {string} e tipo {string} existe') do |nome, email, telefone, data_nascimento, senha, confirme_senha, tipo|
  Usuario.create(nome: nome, email: email, telefone: telefone, data_nascimento: Date.parse(data_nascimento), password: senha, password_confirmation: confirme_senha, tipo: tipo.to_i)
end

And('Eu estou na pagina de treinos') do
  visit '/treinos'
end

When('Eu clico em novo treino') do
  click_link 'Novo Treino'
end

And('Eu preencho o tipo do treino com {string}, a descricao {string}, a data de inicio {string}, a data final {string}, a quantidade de dias {string} e o aluno {string}') do |tipo_treino, descricao, data_inicio, data_final, quantidade, nome_aluno|
  fill_in 'treino[tipo_treino]', :with => tipo_treino
  fill_in 'treino[descricao]', :with => descricao
  fill_in 'treino[data_inicio]', :with => Date.parse(data_inicio)
  fill_in 'treino[data_final]', :with => Date.parse(data_final)
  fill_in 'treino[quantidade_dias]', :with => quantidade
  select nome_aluno, :from => "Aluno"
end

And('Eu clico em criar novo treino') do
  click_button 'Create'
end

Then('Eu vejo que o novo treino pra o aluno {string} foi criado') do |nome|
  visit '/treinos'
  expect(page).to have_content(nome)
end

Then('Eu vejo uma mensagem de treino invalido') do
  assert_selector('div#error_explanation')
end

And('O treino com o tipo {string}, a descricao {string}, a data de inicio {string}, a data final {string}, a quantidade de dias {string} e o aluno {string} existe') do |tipo_treino, descricao, data_inicio, data_final, quantidade, nome_aluno|
  click_link 'Novo Treino'
  fill_in 'treino[tipo_treino]', :with => tipo_treino
  fill_in 'treino[descricao]', :with => descricao
  fill_in 'treino[data_inicio]', :with => Date.parse(data_inicio)
  fill_in 'treino[data_final]', :with => Date.parse(data_final)
  fill_in 'treino[quantidade_dias]', :with => quantidade
  select nome_aluno, :from => "Aluno"
  click_button 'Create'
end

When('Eu clico em remover treino com nome do aluno {string}') do |nome|
  visit '/treinos'
  click_link "d-#{nome}"
end

Then('Eu vejo que o treino com o aluno {string} nao se encontra mais entre os treinos listados') do |nome|
  expect(page).to have_no_content(nome)
end

When('Eu clico em editar treino com nome do aluno {string}') do |nome|
  visit '/treinos'
  click_link "e-#{nome}"
end

And('Eu clico em atualizar treino') do
  click_button "Update"
end

Then('Eu vejo que o novo tipo de treino pra o aluno {string} atualizado') do |nome|
  expect(page).to have_content(nome)
end
