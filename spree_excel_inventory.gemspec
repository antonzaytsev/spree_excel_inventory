# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_excel_inventory'
  s.version     = '1.1.4'
  s.summary     = 'Spree engine that exports the current product inventory to Excel'
  s.description = 'Spree engine that exports the current product inventory to Excel'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Nicholas W. Watson'
  s.email     = 'nick@entropi.co'
  s.homepage  = 'https://github.com/nwwatson/spree_excel_inventory'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.0.3'
  s.add_dependency "spreadsheet", "~> 0.6.8"

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sqlite3'
end
