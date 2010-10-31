class Notifications < ActionMailer::Base
  

  def new_question_notification(sent_at = Time.now)
    subject    'Notifications#new_question'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

end
