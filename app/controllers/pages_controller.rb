class PagesController < ApplicationController
  def landing
    if params[:query].present? 
      @students = Student.where(name: params[:query])
    else
      @students = Student.all
    end
  end
end
