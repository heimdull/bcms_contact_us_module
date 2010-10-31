class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_content_table :questions do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :message
    end
    
    
    ContentType.create!(:name => "Question", :group_name => "Administration")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Question'])
    CategoryType.all(:conditions => ['name = ?', 'Question']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :question_versions
    drop_table :questions
  end
end
