class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact.subject
  #
  def contact(name, email, message)
    @name = name
    @message = message
    @email = email

    mail to: 'pawelrudnicki79@gmail.com', subjec: "Wiadomość z Deportes.pl", from: 'Deportes.pl<kontakt@deportes.pl>'
  end
end
