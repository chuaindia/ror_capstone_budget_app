require 'rails_helper'

RSpec.describe 'Groups index view', type: :system do
  before(:each) do
    @user_one = User.create(name: 'user_one')

    @group_one = Group.create(name: 'group_one', icon: 'icon_one')
    @group_two = Group.create(name: 'group_two', icon: 'icon_two')

    @transract_one = Transract.create(name: 'transract_one', amount: 100)
    @transract_two = Transract.create(name: 'transract_two', amount: 200)
  end

  it 'shows all groups' do
    visit groups_path
    expect(page).to have_content('Add new category')
  end

  it 'shows all transactions' do
    visit group_transracts_path(1)
    expect(page).to have_content('Add new Transtion')
  end
end
