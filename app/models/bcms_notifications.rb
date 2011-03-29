class BcmsNotifications < ActionMailer::Base
  

  def message_notification(question, to, from_email="no_reply@bcms-site.com", subject="New message")
    recipients  to
    from        from_email
    subject     subject
    sent_on     Time.now
    
    body       :question => question
  end

end
