class ResumesController < ApplicationController

  def show
    @resume = Unirest.get("http://localhost:3000/api/v1/resumes/#{params[:id]}")
  end

  def edit 
    
  end

  def update
    @resume = Unirest.post("http://localhost:3000/api/v1/resumes/#{params[:id]}", parameters: {first_name: params[:first_name],
                   last_name: params[:last_name],
                   email: params[:email],
                   phone_number: params[:phone_number],
                   short_bio: params[:short_bio],
                   linkdedln_url: params[:linkdedln_url],
                   twitter_handle: params[:twitter_handle],
                   personal_blog: params[:personal_blog],
                   online_resume_url: params[:online_resume_url],
                   github_hub: params[:github_hub],
                   photo: params[:photo]
                   })
  end


end
