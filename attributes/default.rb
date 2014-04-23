default['chromedriver']['version'] = '2.9'
default['chromedriver']['archive_name']  = "chromedriver_linux64.zip"
default['chromedriver']['source_url']  = "https://chromedriver.storage.googleapis.com/#{node['chromedriver']['version']}/#{node['chromedriver']['archive_name']}"
default['chromedriver']['path'] = '/opt/chromedriver'
default['chromedriver']['owner'] = 'root'
default['chromedriver']['group'] = 'root'
default['chromedriver']['mode'] = 755
