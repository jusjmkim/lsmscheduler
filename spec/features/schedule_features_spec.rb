require 'feature_helper'

RSpec.describe 'Feature Test: Schedule Setup', type: :feature do

  before do
    visit '/students/1/schedules'
  end

  it 'goes to correct page' do
    expect(current_path).to eq('/students/1/schedules')
  end

  it 'displays all schedule names' do
    expect(page).to have_content(@schedule.name)
  end

  it 'displays all semesters' do
    expect(page).to have_content(Schedule.semesters)
  end

  describe 'delete' do
    it 'has delete button' do
      expect(page).to have_content('delete')
    end
  end

  describe 'save' do
    it 'has save button' do
      expect(page).to have_content('save')
    end
  end

end