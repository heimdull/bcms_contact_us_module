module Cms::Routes
  def routes_for_bcms_contact_us_module
    namespace(:cms) do |cms|
      cms.content_blocks :bcms_questions
    end  
  end
end
