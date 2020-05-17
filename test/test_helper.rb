ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def read_gql(name)
    caller_test_file_path= caller[0][/[^:]+/]
    caller_test_file_dir = File.dirname(caller_test_file_path)
    caller_test_file_name = File.basename(caller_test_file_path, ".rb")
    query_file_name = File.join(caller_test_file_dir, "test_queries", "#{caller_test_file_name}_#{name}.gql")
    File.read(query_file_name).to_s.chomp
  end

  # Add more helper methods to be used by all tests here...
end
