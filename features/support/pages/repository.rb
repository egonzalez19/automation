# frozen_string_literal: true

require 'page-object'

class RepositoryPage
  include PageObject

  text_field(:repository_url, id: 'empty-setup-clone-url')
  buttons(:list_subcription_button, name: 'do')

  def list_subcription
  	find_element(xpath: "//notifications-list-subscription-form[@class = 'f5 position-relative d-flex']")
  end

  def delete_repository(repository)
  	find_elements(class: 'UnderlineNav-item')[8].click
  	sleep(0.5)
  	find_element(xpath: "//div[@class='Box Box--danger']//details[@class='details-reset details-overlay details-overlay-dark flex-md-order-1 flex-order-2']").click
    sleep(0.5)
    find_elements(xpath: "//input[@class='form-control input-block']")[3].send_keys repository
    sleep(0.5)
    find_elements(xpath: "//button[@class='btn btn-block btn-danger']").last.click
  end
end
