# frozen_string_literal: true

require 'page-object'

class NewRepositoryPage
  include PageObject

  h1(:title, class: 'Subhead-heading ')
  text_field(:repository_name, id: 'repository_name')
  text_field(:repository_description, id: 'repository_description')
  button(:create, class: ['btn', 'btn-primary', 'first-in-line'])
  dd(:error, class: 'error')
end
