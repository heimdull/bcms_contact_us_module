class ContactUsPortlet < Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    pmap = flash[instance_name] || params
    @bcms_question = BcmsQuestion.new pmap[:bcms_question]
    @bcms_question.errors.add_from_hash flash["#{instance_name}_errors"]
  end
  
  def action
    question = BcmsQuestion.new(params[:bcms_question] || {})
    
    if question.save
      
      if self.notify_me
        begin
          Notifications.deliver_new_question_notification(question, self.notify_emails)
        rescue => e
          logger.error "[ERROR] in ContactUsPortlet => #{e}"
        end
      end
      
      flash[:notice] = "We have received your message and will get intouch with you within 48 hours."
      url_for_success
    else
      flash[:error] = "There was a problem with your question, please check the contact us form and resubmit."
      store_params_in_flash
      store_errors_in_flash(question.errors)
      url_for_failure
    end
  end
    
end