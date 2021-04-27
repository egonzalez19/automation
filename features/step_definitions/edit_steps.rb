# frozen_string_literal: true

require_relative '../../support/pages/profile'
require 'pry-byebug'

When('the user go to profile page') do
  @browser.get 'https://github.com/egonzalez19'
  @page = ProfilePage.new(@browser)
  @bio = 'bio'
  @company = 'company'
  @location = 'location'
  @website = 'website'
  @twitter = 'username'
end

When('opens the profile edit') do
  @page.edit
end

Then('the edition is shown') do
  expect(@page.save?).to eq true
end

When('the user put bio') do
  @page.bio = @bio
end

And('put company') do
  @page.company = @company
end

And('put location') do
  @page.location = @location
end

And('put website') do
  @page.website = @website
end

And('put twitter username') do
  @page.twitter = @twitter_username
end

And('save') do
  @page.save
end

Then('the profile is displayed') do
  sleep(1)
  expect(@page.profile_bio).to match @bio
  expect(@page.vcard).to match @company
  expect(@page.vcard).to match @location
  expect(@page.vcard).to match @website
end

When('cancel') do
  @page.cancel
end

When('the user clean the fields') do
  @page.bio = ''
  @page.company = ''
  @page.location = ''
  @page.website = ''
  @page.twitter = ''
end
