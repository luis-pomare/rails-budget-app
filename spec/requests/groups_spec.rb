require 'rails_helper'

RSpec.describe 'Splash page', type: :request do
  describe 'GET users/sign_in' do
    before :each do
      get new_user_session_path
    end

    it 'should have a http status of 200(correct status)' do
      expect(response).to have_http_status(200)
    end

    it 'should render public_recipe/index view' do
      expect(response).to render_template('sessions/new')
    end

    it 'should include the placeholder text' do
      expect(response.body).to include('SmartPay')
    end
  end
end
