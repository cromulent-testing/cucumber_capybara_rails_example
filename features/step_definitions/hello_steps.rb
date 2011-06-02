When /^I tell the computer my name "([^\"]*)"$/ do |name|
  visit new_hello_path

  # in a 'real project' this code would live in a page model
  fill_in 'Name', :with => name
  click_button 'Create Hello'

end

Then /^It should greet me with a sentence containing "([^\"]*)"$/ do |expected_name|
  within 'table.greetings' do
    all('td.greeting').count.should == 1
    all('td.greeting').first.text.should include expected_name
  end
end
