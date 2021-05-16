describe aws_sqs_queue('https://us-west-2.queue.amazonaws.com/236814333718/new_central_data_relay_e2e') do
  it { should exist }
  its('visibility_timeout') { should be 300 }
end
