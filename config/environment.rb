# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

if Rails.env != 'development'
  Rails.logger = Le.new('9d15cb72-723f-48d5-a0b4-6b0461aa52e7', :debug => true, :local => true)
end
