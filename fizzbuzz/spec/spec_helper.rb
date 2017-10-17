require_relative '../fizzbuzz' #tells code where to find class

RSpec.configure do |config|
  config.formatter = :documentation #brings up context and describe messages
end
