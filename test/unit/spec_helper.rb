require 'chefspec'
require 'cookbook/development/ext/chefspec'

module ChefSpec
  module Matchers

    # def ark_resources_for_package?(resource, package_name)
    #   resource_type(resource) == 'ark' && resource.name == package_name
    # end

    RSpec::Matchers.define :install_ark do |package_name, path|
      match do |chef_run|
        chef_run.resources.any? do |resource|
          resource_type(resource) == 'ark' && resource.name == package_name &&
          resource.path == path
        end
      end
    end

    RSpec::Matchers.define :owner_group_ark do |package_name, owner, group|
      match do |chef_run|
        chef_run.resources.any? do |resource|
          resource_type(resource) == 'ark' && resource.name == package_name &&
            resource.owner == owner && resource.group == group
        end
      end
    end

    RSpec::Matchers.define :mode_ark do |package_name, mode|
      match do |chef_run|
        chef_run.resources.any? do |resource|
          resource_type(resource) == 'ark' && resource.name == package_name &&
            resource.mode == mode
        end
      end
    end

  end
end
