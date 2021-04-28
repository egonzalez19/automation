# automation

requirements:
ruby 2.5.1
firefox webdriver https://github.com/mozilla/geckodriver/releases/tag/v0.29.1

To run the tests you have to clone the project

stand at the root of the project

run
bundle install

run
cucumber features/login.feature \
features/create_repository.feature \
features/edit_profile.feature \
features/watch.feature \
features/delete_repository.feature
