require_relative 'spec_helper'

describe 'chromedriver::default' do

  let (:package_name) { 'chromedriver' }
  let (:owner) { 'root' }
  let (:group) { 'root' }
  let (:path) { '/usr/bin' }
  let(:chef_run) { ChefSpec::ChefRunner.new(:step_into => [:ark]) }

  before do
    chef_run.converge 'chromedriver::default'
  end

  it 'creates chromedriver file in correct location' do
    expect(chef_run).to install_ark(package_name, path)
  end

  it 'creates chromedriver file with correct ownership' do
    expect(chef_run).to owner_group_ark(package_name, owner, group)
  end

  it 'creates chromedriver file with correct permissions' do
    expect(chef_run).to mode_ark(package_name, 755)
  end

end
