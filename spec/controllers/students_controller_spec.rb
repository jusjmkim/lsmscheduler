require 'rails_helper'

RSpec.describe StudentsController, :type => :controller do

  def new

  end

  def create
    @student = Student.find(session[:student_id]) if session[:student_id]

    if @student

    else

    end
  end

  def destroy

  end

end
