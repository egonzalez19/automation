# frozen_string_literal: true

Before do
  @browser = Selenium::WebDriver.for :firefox
  @repository_name = 'proyect'
  @bio = 'bio'
  @company = 'company'
  @location = 'location'
  @website = 'website'
  @twitter = 'username'
  @user = 'egonzalez19'
end

After do
  @browser.close
end
