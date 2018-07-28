require 'rails_helper'

feature 'User visit homepage' do
  scenario 'and see information about APP' do

    visit root_path

    expect(page).to have_content('Aplicativo de Cartões de Alimentação')
    expect(page).to have_content('Importar o dado')
  end

  scenario 'failed' do

    visit root_path

    expect(page).not_to have_content('Nome Completo')
    expect(page).not_to have_content('Email')
    expect(page).not_to have_content('Token')
    expect(page).not_to have_content('Data de Admissão')
    expect(page).not_to have_content('Valor disponível no cartão')
  end
end
