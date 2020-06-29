class FeedbacksMailer < ApplicationMailer
  default to: 'resh0607@mail.ru'

  def send_message(feedback)
    @email = feedback.email
    @message = feedback.message

    mail from: @email, subject: 'There is new feedback'
  end
end