class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: @contact.email, subject: '【お問い合わせ受付完了】お問い合わせいただき、ありがとうございます。'
  end
end
