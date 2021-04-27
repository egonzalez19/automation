# frozen_string_literal: true

require 'page-object'

class LoginPage
  include PageObject

  text_field(:username, id: 'login_field')
  text_field(:password, id: 'password')
  div(:error, class: ['flash', 'flash-full', 'flash-error'])
  button(:login, name: 'commit')

  def login_user(user, pass)
  	self.username = user
  	self.password = pass
  	self.login
  end
end
