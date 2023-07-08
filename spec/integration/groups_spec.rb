require 'rails_helper'
RSpec.describe 'Groups (categories)', type: :system do
  describe 'index' do
    let!(:user) do
      Group.create(name: 'Name 1', icon: 'boy.png', user_id: 1, id: 1)
    end
    let!(:group) do
      Group.create(name: 'Name 1', icon: 'boy.png', user_id: 1, id: 1)
    end

    describe 'testing page rendering' do
      it 'should render main splash path' do
        visit '/'
        expect(page).to have_current_path('/users/sign_in')
      end
    end

    describe 'testing page content' do
      it 'should render the main content' do
        visit '/'
        expect(page).to have_content('SIGN UP')
      end
    end
  end
end
