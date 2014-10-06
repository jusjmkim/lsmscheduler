require_relative '../rails_helper.rb'

RSpec.describe 'Feature Test: User Signup', type: :feature do

  describe 'page renders correctly' do
    before do
      visit '/'
    end

    it 'has username field' do
      expect(page).to have_content('username')
    end

    it 'has password field' do
      expect(page).to have_content('password')
    end
  end

end