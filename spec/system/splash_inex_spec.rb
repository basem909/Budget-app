require 'rails_helper'

RSpec.describe 'Integration testing for home screen', type: :feature do
  context 'splash' do
    it 'should diplay a splash page if user not logged in' do
      visit root_path
      expect(page).to have_content('Smart Finance')
    end

    it 'user should not be able to see the groups page if user not logged in' do
      visit root_path
      expect(page).to have_selector('h1')
    end
  end
end
