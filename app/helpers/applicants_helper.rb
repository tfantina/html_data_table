module ApplicantsHelper
  def job_skill_count(j)
    Skill.where(applicant_id: j.applicants.each do |i| i.id end).count
  end

  def applicant_skill_count(a)
    a.skills.count
  end

  def link(link)
   link.present? ? (link_to link, "http://#{link}") : "---"
  end

  def mail(email)
     email.present? ? (mail_to email, email) : "---"
  end
end
