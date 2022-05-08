# name: twitter-profile-link
# about: Link to twitter profile on user pages
# version: 0.1
# authors: Neil Lalonde
# url: https://github.com/discourse/twitter-profile-link
# transpile_js: true

register_asset "javascripts/discourse/templates/connectors/user-profile-primary/twitter-profile.js.handlebars"
register_asset "stylesheets/twitter-profile-link.scss"

after_initialize do
  add_to_serializer(:user, :twitter_screen_name) do
    object.user_associated_accounts.find_by(provider_name: "twitter")&.info["nickname"]
  end
  add_to_serializer(:user, :include_twitter_screen_name?) do
    object.user_associated_accounts.exists?(provider_name: "twitter")
  end
end
