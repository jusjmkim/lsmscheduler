require 'rails_helper'

RSpec.describe SchedulesController, :type => :controller do
  describe 'index' do
    before do
      visit '/students/1/schedules'
    end

    it 'is valid' do
      expect(response.status).to eq(200)
    end
  end

  describe 'new' do
    before do
      visit '/students/1/schedules/new'
    end

    it 'is valid' do
      expect(response.status).to eq(200)
    end
  end

  describe 'create' do
 
  end

  describe 'show' do
    before do
      visit '/students/1/schedules/1'
    end

    it 'is valid' do
      expect(response.status).to eq(200)
    end
  end

  describe 'edit' do
    before do
      visit '/students/1/schedules/1/edit'
    end

    it 'is valid' do
      expect(response.status).to eq(200)
    end
  end

  describe 'update' do

  end

  describe 'destroy' do

  end

end
