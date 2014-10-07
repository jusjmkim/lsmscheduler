require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do

  describe '#current_student' do
    it 'does not show false positive' do
      expect(session[:student_id]).to be_nil
    end
  end

end
