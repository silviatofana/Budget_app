require 'rails_helper'

RSpec.describe 'Entities', type: :request do
  include Devise::Test::IntegrationHelpers
  before do
    @user = User.create(name: 'Dan Go', password: '123456', email: 'dan@gmail.com')
    @budget =Entity.create(name: 'Toyota', amount: 100)
    sign_in @user
  end

  context 'GET /index : ' do
    before(:example) { get entities_path }
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'returns http success' do
      expect(assigns(:entities)).to eq(Entity.all)
    end
  end
end
