class StudentsController < ApplicationController

  def new
   
  end

  def create

    student_hash = {
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
    }

    @student = Unirest.post("https://sheltered-harbor-10108.herokuapp.com/resumes",
      headers: {
        Accept: "application/json",
        Authorization: "#{ENV['TOKEN']}"
      },
      parameters: student_hash
    )

    redirect_to "/resumes/"

  end

  def index
    @students = Unirest.get("https://sheltered-harbor-10108.herokuapp.com/resumes",
      headers: {
        Accept: "application/json",
        Authorization: "#{ENV['TOKEN']}"
      }
    ).body

  end

end
