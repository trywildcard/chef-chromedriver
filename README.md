[![Build Status](https://travis-ci.org/RallySoftware-cookbooks/chromedriver.png?branch=master)](https://travis-ci.org/RallySoftware-cookbooks/chromedriver)

Description
===========
Installs the chromedriver binary.

Requirements
============

Platform
--------
Tested on CentOS 6.4 and Ubuntu 12.04.  May support other operating systems that support the use of ark.

Other
-----

Requires the RallySoftware-cookbooks/ark cookbook

Attributes
==========
See `attributes/default.rb` for default values

* `node['chromedriver']['version']` - Specifies the version of chromedriver to install
* `node['chromedriver']['archive_name']` - Name of zip to download
* `node['chromedriver']['source_url']` - Specifies full URL to download archive
* `node['chromedriver']['path']` - Path to use for installation
* `node['chromedriver']['owner']` - Owner of the installed binary
* `node['chromedriver']['group']` - Group of the installed binary
* `node['chromedriver']['mode']` - Mode of the installed binary

Recipes
=======

default
-------

Installs the chromedriver binary.

License
=======

Copyright (c) Rally Software Development Corp. 2013

Distributed under the MIT License.
