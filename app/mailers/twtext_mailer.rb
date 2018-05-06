class TwtextMailer < ApplicationMailer
  def twtext_mail(twtext)
    @twtext = twtext
    mail to: @twtext.user.email, subject: '【つぶやき完了】新しいつぶやきを投稿しました'
  end
end
