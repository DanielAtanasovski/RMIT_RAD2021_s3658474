class NewsletterMailer < ApplicationMailer
  default from: 's3658474@student.rmit.edu.au'

  def newsletter_email
    @email = params[:email]
    mail(to: @email, subject: 'Welcome to the JustAnotherOnlineStore Newsletter')
  end
end
