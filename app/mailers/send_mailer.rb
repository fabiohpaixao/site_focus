class SendMailer < ApplicationMailer
	default from: 'web@focusautomation.com.br'
	
	def contact_email(contact)
		@contact = contact
		
		mail(to: "contato@focusautomation.com.br", subject: "Contato do site")
	end
end
