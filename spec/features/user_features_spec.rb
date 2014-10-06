require 'feature_helper'

RSpec.describe 'Feature Test: User Signup', type: :feature do

  before do
    visit '/'
  end

  describe 'page renders correctly' do
    visit '/'

    context 'check headers' do
      it 'has top header' do
        expect(page).to have_content('LSM Scheduler')
      end

      it 'has second header' do
        expect(page).to have_content('About')
      end
    end

    context 'check login fields' do
      it 'has username field' do
        expect(page).to have_content('Username')
      end

      it 'has password field' do
        expect(page).to have_content('Password')
      end
    end
  end

  describe 'logging in' do
    visit '/'

    # Student.create(username: 'Justin', password: 'password')

    # fill_in('username', with: 'Justin')
    # fill_in('password', with: 'password')
    click_button('log-in')

    it 'logs in' do
      expect(current_path).to eq('/schedules')
    end
  end

end