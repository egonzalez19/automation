# frozen_string_literal: true

require 'page-object'

class RepositoryPage
  include PageObject

  text_field(:repository_url, id: 'empty-setup-clone-url')
end
