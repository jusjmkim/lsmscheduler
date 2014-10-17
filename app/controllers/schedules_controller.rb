class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
    @semesters = Schedule.semesters
  end

  def new

  end

  def create

  end

  def show

  end

  def update

  end

  def destroy

  end

end
