class CreateBcmsQuestions < ActiveRecord::Migration
  def self.up
    create_content_table :bcms_questions do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :message
    end
    
    
    ContentType.create!(:name => "BcmsQuestion", :group_name => "Administration")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'BcmsQuestion'])
    CategoryType.all(:conditions => ['name = ?', 'Question']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :bcms_question_versions
    drop_table :bcms_questions
  end
end
