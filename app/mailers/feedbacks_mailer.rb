class FeedbacksMailer < ApplicationMailer
  default to: ENV['ADMIN_EMAIL']

  def send_message(feedback)
    @email = feedback.email
    @message = feedback.message

    mail from: @email, subject: t('.subject')
  end
end