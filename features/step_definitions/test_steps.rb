Given /the following gifs exist/ do |gifs_table|
    gifs_table.hashes.each do |gif|
        Gif.create!(gif)
    end
end

Then(/^I should see a gif called "([^"]*)"$/) do |arg1|
    if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end
