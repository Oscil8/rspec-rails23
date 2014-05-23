require 'rspec/rails/example/rails_example_group'
require 'rspec/rails/example/model_example_group'
require 'rspec/rails/example/controller_example_group'
require 'rspec/rails/example/request_example_group'
require 'rspec/rails/example/routing_example_group'
require 'rspec/rails/example/feature_example_group'

RSpec::configure do |c|
  def c.escaped_path(*parts)
    Regexp.compile(parts.join('[\\\/]'))
  end

  c.include RSpec::Rails::ModelExampleGroup, :type => :model, :file_path => c.escaped_path(%w[spec models])
  c.include RSpec::Rails::ControllerExampleGroup, :type => :controller, :file_path => c.escaped_path(%w[spec controllers])
  c.include RSpec::Rails::RequestExampleGroup, :type => :request, :file_path => c.escaped_path(%w[spec (requests|integration)])
  c.include RSpec::Rails::RoutingExampleGroup, :type => :routing, :file_path => c.escaped_path(%w[spec routing])
  c.include RSpec::Rails::FeatureExampleGroup, :type => :feature, :file_path => c.escaped_path(%w[spec features])
end
