##Terraform based infra testing using inspec, awspec 

There are multiple  ways infra can be tested

#Common steps
- download and install rvm and ruby
-  ```gem install bundler```
- create Gemfile with following contents in directory where kitchen is required. In this case its preprod env ::
```
source 'https://rubygems.org'
gem 'nokogiri'
gem 'rspec', :require => 'spec'
gem 'awspec'
gem 'inspec', ">= 4.37.8"
gem "rake"
gem "rubyzip", ">= 1.3.0"
```
- run ```BUNDLE_GEMFILE=Gemfile bundler install``` command to install all packages.

# AWSSpec setup
- code for awspec is available in tests/integration/basic/awspec

- run following commands ::
```sh
bundle exec rspec tests/integration/basic/awspec

```
# AWSSpec setup with Rake
- Install Rake gem
- Add Rakefile
- Add spec*.rb file to spec directory. Include spec_helper.rb file as well.

- run follwoing command
```sh
bundle exec rake
```
#Inspec setup

You would need to install inspec binary from https://docs.chef.io/inspec/install/ 
Inspec profile can be created using following command (executing in dir tests/integration/basic/inspec)
```sh
inspec init profile --platform=aws aws_verify
```
Edit rspec files in it.

Run following command to test inspec profile
```sh
inspec exec aws_verify -t aws://
```
