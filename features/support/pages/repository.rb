# frozen_string_literal: true

require 'page-object'

class RepositoryPage
  include PageObject

  text_field(:repository_url, id: 'empty-setup-clone-url')
  buttons(:list_subcription_button, name: 'do')

  def list_subcription
  	find_element(xpath: "//notifications-list-subscription-form[@class = 'f5 position-relative d-flex']")
  end
end
