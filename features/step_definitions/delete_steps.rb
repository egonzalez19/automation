# frozen_string_literal: true

When('the user go to settings page') do
  @browser.get "https://github.com/#{@user}/#{@repository_name}/settings"
end

When('delete repository') do
  @page = RepositoryPage.new(@browser)
  @page.delete_repository("#{@user}/#{@repository_name}")
end
