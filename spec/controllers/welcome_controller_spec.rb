require 'rails_helper'

RSpec.describe WelcomeController, :type => :controller do
  describe 'index' do
    it 'is successful' do
      expect(response.status).to eq(200)
    end
  end
end
