# Preview all emails at 
# http://localhost:3000/rails/mailers/email_confirmation_mailer/sample_mail_preview

class EmailConfirmationMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    EmailConfirmationMailer.sample_email(User.first)
  end
end
