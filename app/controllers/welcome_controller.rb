class WelcomeController < ApplicationController

  def index
  end

  def new

  end

  def create
    @student = Student.find(params[:student][:id])

    if @student
      sign_in(@student)
      redirect_to @student
    else
      redirect_to root_path, notice: 'Sorry, I couldn\'t find you.' 
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

end
