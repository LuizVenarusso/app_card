require 'rails_helper'

feature 'User visit homepage' do
  scenario 'and see information about APP' do

    visit root_path

    expect(page).to have_content('Aplicativo de Cartões de Alimentação')
  end

  scenario 'failed' do

    visit root_path

    expect(page).not_to have_content('Valor disponível no cartão')
  end
end
