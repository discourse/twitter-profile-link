# name: twitter-profile-link
# about: Link to twitter profile on user pages
# version: 0.1
# authors: Neil Lalonde
# url: https://github.com/discourse/twitter-profile-link

register_asset "javascripts/discourse/templates/connectors/user-profile-primary/twitter-profile.js.handlebars"
register_asset "stylesheets/twitter-profile-link.scss"

after_initialize do
  add_to_serializer(:user, :twitter_screen_name) do
    object.twitter_user_info.screen_name
  end
  add_to_serializer(:user, :include_twitter_screen_name?) do
    object.twitter_user_info.present?
  end
end
