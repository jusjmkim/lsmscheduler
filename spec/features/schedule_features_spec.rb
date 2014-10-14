require 'feature_helper'

RSpec.describe 'Feature Test: Schedule Setup', type: :feature do

  before do
    visit '/students/1/schedules'
  end

  it 'goes to correct page' do
    expect(current_path).to eq('/students/1/schedules')    
  end

end