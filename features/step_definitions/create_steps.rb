# frozen_string_literal: true

When('the user go to create repository page') do
  @browser.get 'https://github.com/new'
  @page = NewRepositoryPage.new(@browser)
end

Then('the user is in new repository page') do
  expect(@page.title).to eq 'Create a new repository'
end

When('the user put repository name') do
  @page.repository_name = @repository_name
end

And('the user put a description') do
  @page.repository_description = 'description of a new repository'
end

When('the user create a repository') do
  @page.create
end

Then('the repository is created') do
  @page = RepositoryPage.new(@browser)
  expect(@page.repository_url).to eq "git@github.com:#{@user}/#{@repository_name}.git"
end

Then('the name is used') do
  expect(@page.error).to eq "The repository #{@repository_name} already exists on this account."
end

