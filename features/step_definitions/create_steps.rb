# frozen_string_literal: true

require_relative '../../support/pages/new_repository'
require_relative '../../support/pages/repository'

When('the user go to create repository page') do
  @repository_name = 'tete'
  @browser.get 'https://github.com/new'
  @page = NewRepositoryPage.new(@browser)
end

Then('the user is in new repository page') do
  @page.title == 'Create a new repository'
end

When('the user put repository name') do
  @page.repository_name = @repository_name
end

Then('the user put a description') do
  @page.repository_description = 'description of a new repository'
end

Then('the user create a repository') do
  @page.create
end

Then('the repository is created') do
  @page = RepositoryPage.new(@browser)
  @page.repository_url == "git@github.com:egonzalez19/#{@repository_name}.git"
end

Then('the name is used') do
  @page.error == "The repository #{@repository_name} already exists on this account."
end

