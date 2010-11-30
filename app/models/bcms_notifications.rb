class BcmsNotifications < ActionMailer::Base
  

  def new_question_notification(question, recipients, from_email="no_reply@bcms-site.com", subject="New question submitted")
    subject    subject
    recipients recipients
    from       from_email
    
    body       "Question Subject: " + question.subject + "\n\n" + question.message
  end

end
