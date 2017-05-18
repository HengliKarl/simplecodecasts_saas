class ContactMailer < ActionMailer::Base
    
    default to: 'linodior@gmail.com'
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, replyTo: email, subject: 'Contact Form Message')
    end
end