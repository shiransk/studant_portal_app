class StudentsController < ApplicationController

  def new
   
  end

  def create
    
  end

  def index
    @students = Unirest.get("http://localhost:3000", headers: {
          Accept: "application/json",
          Authorization: "#{ENV['TOKEN']}"
         })
  end

  def show
    @student = Unirest.get("http://localhost:3000/api/v1/students/#{params[:id]}", headers: {
          Accept: "application/json",
          Authorization: "#{ENV['TOKEN']}"
         })
  end

end
