require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  include Devise::Test::IntegrationHelpers
  before do
    @user = User.create(name: 'Chris', password: '123456', email: 'chris@gmail.com')
    @group = Group.create(name: 'Toyota', icon: 'https://icon.com')
    sign_in @user
  end

  context 'GET /index : ' do
    it 'returns http success' do
      get groups_path
      expect(response).to have_http_status(:success)
    end
  end
end
