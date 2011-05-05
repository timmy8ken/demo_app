RAILS_GEM_VERSION = '2.3.8' unless defined? RAILS_GEM_VERSION

if ENV['RAILS_ENV'] == 'production'  # don't bother on dev
  ENV['GEM_PATH'] = '/home/timmy8ken/.gems' + ':/usr/lib/ruby/gems/1.8'
end

require File.join(File.dirname(__FILE__), 'boot')

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
DemoApp::Application.initialize!
