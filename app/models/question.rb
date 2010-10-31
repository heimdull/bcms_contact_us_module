class Question < ActiveRecord::Base
  acts_as_content_block
  
  # Pattern used to find real emails
  EMAIL_PATTERN = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i  
  
  # i18n messages stored in config/locales/en.yml
  validates_presence_of   :email
  validates_format_of     :email, :with => EMAIL_PATTERN

  # display_name is used in the admin secton of the cms to give our
  # content block a readable name
  def self.display_name
    "Submitted Questions"
  end
  
  # When the question is saved make sure it is also published does not make
  # sens to publish a question right?
  def before_create
    self.published = true
  end
  
end
