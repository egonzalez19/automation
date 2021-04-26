# frozen_string_literal: true

require 'page-object'

class HomePage
  include PageObject

  div(:repositories, id: 'repos-container')
end
