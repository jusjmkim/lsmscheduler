require_relative '../rails_helper.rb'

RSpec.describe 'Feature Test: Schedule Setup', type: :feature do

  describe 'page renders correctly' do
    before do
      visit '/schedules'
    end
  end

end