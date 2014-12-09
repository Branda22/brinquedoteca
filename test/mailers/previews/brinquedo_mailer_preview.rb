# Preview all emails at http://localhost:3000/rails/mailers/brinquedo_mailer
class BrinquedoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/brinquedo_mailer/greeting
  def greeting
    BrinquedoMailer.greeting
  end

end
