class SendmailMailer < ApplicationMailer
    def message_notification(message)
    @message = message
    mail from: 'kbs4674@damda.info',
        to: "#{@message.conversation.recipient.email}",
        subject: "#{@message.conversation.sender.nickname} 님으로부터 메세지가 도착했습니다.",
        html: render(template: "sendmail_mailer/message_notification")
    end
end