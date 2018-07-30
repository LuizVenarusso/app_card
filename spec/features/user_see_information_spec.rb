require 'rails_helper'

feature 'User see information about csv file upload' do
  scenario 'successfully' do
    
    visit root_path
    attach_file('file', Rails.root + 'spec/fixtures/dados-19-07-2018.csv')
    click_on('Importar o arquivo CSV')

    expect(page).to have_content('Nome do Arquivo: ')
    expect(page).to have_content(Pathname.new('spec/fixtures/dados-19-07-2018.csv').basename)
    expect(page).to have_content('Total de Linhas do Arquivo: ')
    expect(page).to have_content(IO.readlines('spec/fixtures/dados-19-07-2018.csv').size - 1)
    expect(page).to have_content('Nome Completo')
    expect(page).to have_content('Email')
    expect(page).to have_content('Token')
    expect(page).to have_content('Data de Admissão')
    expect(page).to have_content('Valor disponível no cartão')
  end
end
