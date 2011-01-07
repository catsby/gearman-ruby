def gearman_server  
  @gearman_server ||= Gearman::Server.new('localhost:4730')
end

def gearman_worker
  @gearman_worker ||= Gearman::Worker.new('localhost:4730')
end

Given /^gearmand is running$/ do
end

Given /^a basic worker is running$/ do
  gearman_worker.add_ability('sleep')
  assert gearman_worker.status == "preparing".to_sym
  assert !gearman_server.status.empty? #  == {"sleep"=>{"0"=>{:active=>"1", :queue=>"0", :workers=>nil}}}
end

When /^I add a basic client$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the job should be processed$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end