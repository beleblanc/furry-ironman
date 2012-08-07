class ContactMailer < ActionMailer::Base
  default from: "info@caultive.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_confirmation.subject
  #
  def contact_confirmation(message, email,name, company)
    @name = name

    mail to: email, subject: "Contact Confirmation"

    notify_caultive(message, name,email, company)
  end

  def notify_caultive(message, name, email, company)
    @message = message
    @email = email
    @name = name

    mail to: "info@caultive.com", subject: "Contact Request from #{name}, @ #{company}"
  end
end
