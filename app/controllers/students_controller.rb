class StudentsController < ApplicationController

  def new

  end

  def create
    
  end

  def show
    @student = Unirest.get("http://localhost:3000/api/v1/students/#{params[:id]}")
  end

end
