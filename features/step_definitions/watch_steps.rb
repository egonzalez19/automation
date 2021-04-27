# frozen_string_literal: true

When('the user go to repository page') do
  @browser.get "https://github.com/#{@user}/#{@repository_name}"
end

Then('the user is in repository page') do
  @page = RepositoryPage.new(@browser)
  expect(@page.repository_url).to eq "git@github.com:#{@user}/#{@repository_name}.git"
end

When('the user watch repository') do
  @page.list_subcription.click
  sleep(0.5)
  @page.list_subcription_button_elements[0].click
  sleep(0.5)
end

Then('the repository is watched') do
  expect(@page.list_subcription.text).to match 'Watch'
end

When('the user unwatch repository') do
  @page.list_subcription.click
  sleep(0.5)
  @page.list_subcription_button_elements[2].click
  sleep(0.5)
end

Then('the repository is unwatched') do
  expect(@page.list_subcription.text).to match 'Stop ignoring'
end
