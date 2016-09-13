class StudentsController < ApplicationController

  def show
    @student = Unirest.get("http://localhost:3000/api/v1/students/#{params[:id]}")
  end

end
