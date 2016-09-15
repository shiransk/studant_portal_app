class StudentsController < ApplicationController

  def new
   
  end

  def create

    student_hash = {
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],

    }

    @student = Unirest.post("http://localhost:3000/resumes",
      headers: {Accept: "application/json"},
      parameters: student_hash
    )

    redirect_to "/resumes/index"

  end

  def index
    @students = Unirest.get("http://localhost:3000/resumes")
  end

end
