require_relative 'spec_helper'

describe file('/usr/bin/chromedriver') do
  it { should be_file }
  it { should be_mode 755 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
