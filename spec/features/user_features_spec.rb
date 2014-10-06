require_relative '../rails_helper.rb'

RSpec.describe 'Feature Test: User Signup', type: :feature do

  describe 'page renders correctly' do
    before do
      visit '/'
    end

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

end