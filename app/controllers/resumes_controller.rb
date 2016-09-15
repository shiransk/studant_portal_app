class ResumesController < ApplicationController

  def show
    @student = Unirest.get("http://localhost:3000/api/v1/resumes/#{params[:id]}")
  end

  def edit 
    
  end

  def update
    @student = Unirest.post("http://localhost:3000/api/v1/resumes/#{params[:id]}", parameters: {first_name: params[:first_name],
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
                   })
  end


end


