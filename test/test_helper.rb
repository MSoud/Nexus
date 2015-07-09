ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def logger
    Rails.logger
  end
  
  private

    # Returns true inside an integration test.
    def integration_test?
      defined?(post_via_redirect)
    end
end
