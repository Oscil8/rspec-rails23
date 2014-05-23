require File.expand_path(File.dirname(__FILE__) + "/../../../spec_helper")

describe RSpec::Core::Configuration do

  example "loading rspec rails23 includes it in the configuration class" do
    RSpec::Core::Configuration.included_modules.should include(Rspec::Rails23::Configuration)
  end

  it "adds a #rails method" do
    RSpec::Core::Configuration.new.should respond_to(:rails)
  end

  it "adds an #enable_active_record_transactional_support method" do
    RSpec::Core::Configuration.new.should respond_to(:enable_active_record_transactional_support)
  end

end
