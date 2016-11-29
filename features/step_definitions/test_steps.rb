Given /the following gifs exist/ do |gifs_table|
    gifs_table.hashes.each do |gif|
        Gif.create!(gif)
    end
end

Then(/^I should see a gif called "([^"]*)"$/) do |arg1|
    if page.respond_to? :should
    page.should have_content(arg1)
  else
    assert page.has_content?(arg1)
  end
end

Then(/^I should not see a gif called "([^"]*)"$/) do |arg1|
    if page.respond_to? :should
    page.should have_no_content(arg1)
  else
    assert page.has_no_content?(arg1)
  end
end
