# frozen_string_literal: true


require 'page-object'

class ProfilePage
  include PageObject

  button(:edit, class: ['btn', 'btn-block', 'js-profile-editable-edit-button'])
  text_area(:bio, name: 'user[profile_bio]')
  text_field(:company, name: 'user[profile_company]')
  text_field(:location, name: 'user[profile_location]')
  text_field(:website, name: 'user[profile_blog]')
  text_field(:twitter, name: 'user[profile_twitter_username]')
  button(:save, class: ['btn', 'btn-sm', 'btn-primary'])
  button(:cancel, class: 'js-profile-editable-cancel')
  ul(:vcard, class: 'vcard-details')
  div(:profile_bio, class: ['p-note', 'user-profile-bio', 'mb-3', 'js-user-profile-bio', 'f4'])
end
