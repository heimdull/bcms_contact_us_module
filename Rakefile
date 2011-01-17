# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'


begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "bcms_contact_us_module"
    gemspec.summary = "Contact Us portlet in BrowserCMS"
    gemspec.description = "A BrowserCMS module that gives you a contact us portlet"
    gemspec.email = "freddy@zerolimitstech.com"
    gemspec.homepage = "http://github.com/heimdull/bcms_contact_us_module"
    gemspec.authors = ["Freddy Andersen"]
    gemspec.files = Dir["app/**/*"]
    gemspec.files += Dir["lib/**/*"]
    gemspec.files += Dir["db/migrate/*.rb"]
    gemspec.files -= Dir["db/migrate/*_browsercms_*.rb"]
    gemspec.files -= Dir["db/migrate/*_load_seed_data.rb"]
    gemspec.files += Dir["rails/init.rb"]
  end
	Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
