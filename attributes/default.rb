default['chromedriver']['version'] = 'linux64_2.9'
default['chromedriver']['archive_name']  = "chromedriver_#{node['chromedriver']['version']}.zip"
default['chromedriver']['source_url']  = "https://chromedriver.googlecode.com/files/#{node['chromedriver']['archive_name']}"
default['chromedriver']['path'] = '/opt/chromedriver'
default['chromedriver']['owner'] = 'root'
default['chromedriver']['group'] = 'root'
default['chromedriver']['mode'] = 755
