RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  #additional factory_girl configuration
  config.before(:suite) do
    FactoryGirl.lint
  end
end
