# frozen_string_literal: true

Given('a valid password') do
  @pass = 'P3l0t1t4!'
end

When('go to login page') do
  @browser.get 'https://github.com/login'
  @page = LoginPage.new(@browser)
end

And('login with user and pass') do
  @page.username = @user
  @page.password = @pass
  @page.login
  sleep(2)
end

Then('the user is logged') do
	@page = HomePage.new(@browser)
	expect(@page.repositories).to match @user
end

Given('an invalid password') do
  @pass = 'P3l0t'
end

Then('the login page show invalid user') do
	expect(@page.error).to eq 'Incorrect username or password.'
end
