class StudentsController < ApplicationController

  def new
   
  end

  def create

    api_key = (0...50).map { ('a'..'z').to_a[rand(26)] }.join

    student_hash = {
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      api_key: api_key,
      password: params[:password],
      password_confirmation: params[:password_confirmation]
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
