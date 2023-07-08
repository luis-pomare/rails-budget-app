require 'rails_helper'

RSpec.describe 'Create new group', type: :request do
  describe 'GET /groups/new' do
    before :each do
      get new_group_path
    end

    it 'should have a http status of 302(Redirection to sign_up)' do
      expect(response).to have_http_status(302)
    end

    it 'should render public_recipe/index view' do
      expect(response).to redirect_to('/users/sign_in')
    end

    it 'should include the placeholder text' do
      expect(response.body).to include('users/sign_in')
    end
  end
end
