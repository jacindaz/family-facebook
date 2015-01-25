class EmailConfirmationMailer < ActionMailer::Base

  # this is the sender's address
  default from: "from@example.com"

  def sample_email(user)
    @user = user 
    mail(to: @user.email, subject: 'Sample Email')
  end

end
