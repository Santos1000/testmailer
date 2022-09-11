class UserMailer < ApplicationMailer

  # colocar e-mail do site, pois é e-mail span
  def welcome_mail
    attachments.inline["logo.png"] = File.read('app/assets/images/logo.png')
    @name = 'Giovana Silva'
    @site = 'example.com'
    mail to: 'user@example.org', subject: 'Bem vindo ao site!'
  end

  def niver
    @name = 'Jose dos Santos'
    @email = 'jose@gmail.com'
    mail to: @email , subject: "Feliz Aniversario #{@name}!"
  end
end
