# copyright: 2018, The Authors

require 'pp'

title "Verify client vpc"

aws_vpc_id = input("aws_vpc_id")

puts "==============="
puts input_object('aws_vpc_id').diagnostic_string

puts "==============="
pp input_object('aws_vpc_id').events

puts "==============="

# Controls
control "aws-single-vpc-exists-check" do                                    # A unique ID for this control.
  only_if { aws_vpc_id != "" }                                              # Only run this control if the `aws_vpc_id` input is provided.
  impact 1.0                                                                # The criticality, if this control fails.
  title "Check to see if custom VPC exists."                                # A human-readable title.
  describe aws_vpc(aws_vpc_id) do                                           # The test itself.
    it { should exist }
    it { should be_available }
  end
end
