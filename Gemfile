source 'https://rubygems.org'

gem 'rake', '~> 10.0'

gem 'chef', '~> 11.4'
gem 'berkshelf', '~> 1.4'
gem 'cookbook-development', :git => 'https://github.com/RallySoftware-cookbooks/cookbook-development'

gem 'strainer', '~>2.1'
gem 'chefspec', '~> 1.2'
# Waiting for a version with issue-143 to be released
gem 'foodcritic', :git => 'https://github.com/acrmp/foodcritic.git', :ref => '209c01e8dc863a6e0b9b26fa187a0421df0f922f'

# Workaround for json dependency for chef and berkshelf.  Chef
# wants <= 1.7.7 and berkshelf >= 1.5 but bundler tries to grab 1.8.0
# which violates chef's requirement.  Seems like a bundler bug.
gem 'json', '1.7.7'

group :integration do
  gem 'test-kitchen', :git => 'https://github.com/RallySoftware-cookbooks/test-kitchen', :branch => 'KITCHEN-75'
  gem 'kitchen-vagrant'
end
