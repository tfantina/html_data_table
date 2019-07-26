class ApplicantsController < ApplicationController
  def index 
    @total_applicants = Applicant.count
    @jobs = Job.all 
    @unique_skills = Skill.distinct.count(:name)
  end
end
