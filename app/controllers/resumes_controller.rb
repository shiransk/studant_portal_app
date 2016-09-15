class ResumesController < ApplicationController

  def show
    @student = Unirest.get("https://sheltered-harbor-10108.herokuapp.com/resumes/#{params[:id]}",
      headers: {
        Accept: "application/json",
        Authorization: "#{ENV['TOKEN']}"
      },
    ).body

  end

  def edit 
    
  end

  def update
    @student = Unirest.post("https://sheltered-harbor-10108.herokuapp.com/resumes/#{params[:id]}",
      headers: {
        Accept: "application/json",
        Authorization: "#{ENV['TOKEN']}"
      },
      parameters: {
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        phone_number: params[:phone_number],
        short_bio: params[:short_bio],
        linkedin: params[:linkdedln_url],
        twitter_handle: params[:twitter_handle],
        website: params[:website],
        resume: params[:resume],
        github: params[:github],
        photo: params[:photo]
      }
    ).body
  end


end


