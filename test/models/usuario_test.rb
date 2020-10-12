require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  test 'salvar usuario admin valido' do
    admin = Usuario.new(nome: 'admin', email: 'admin@example.com', 
    telefone: '8799999999', data_nascimento: Date.new(1999, 9, 9), 
    password: 'password', password_confirmation: 'password', tipo: 2)
    assert admin.save 
  end
  test 'salvar usuario admin com campo email invalido' do
    admin = Usuario.new(nome: 'admin', email: 'adminexample.com', 
    telefone: '8799999999', data_nascimento: Date.new(1999, 9, 9), 
    password: 'password', password_confirmation: 'password', tipo: 2)
    assert_not admin.save 
  end
  test 'deletar usuario admin valido' do
    admin = Usuario.new(nome: 'admin', email: 'admin@example.com', 
    telefone: '8799999999', data_nascimento: Date.new(1999, 9, 9), 
    password: 'password', password_confirmation: 'password', tipo: 2)
    admin.save 
    assert admin.delete
  end
  test 'alterando usuario admin com nome invalido' do
    admin = Usuario.new(nome: 'admin', email: 'admin@example.com', 
    telefone: '8799999999', data_nascimento: Date.new(1999, 9, 9), 
    password: 'password', password_confirmation: 'password', tipo: 2)
    admin.save 
    assert_not admin.update nome: 'ad'
  end
 end
