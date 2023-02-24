require 'rails_helper'

RSpec.describe TransarctsController, type: :system do
  describe 'transract index view' do
    before(:each) do
      @user_one = User.create(name: 'user_one')

      @group_one = Group.create(name: 'group_one', icon: 'icon_one')
      @group_two = Group.create(name: 'group_two', icon: 'icon_two')

      @transract_one = Transract.create(name: 'transract_one', amount: 100)
      @transract_two = Transract.create(name: 'transract_two', amount: 200)

      visit group_transracts_path(1)
    end

    it 'shows all transactions' do
      expect(page).to have_content('Add new Transaction')
    end

    it 'open a new transaction form' do
      click_on 'Add new Transaction'
      expect(page).to have_content('Name')
    end
  end
end
