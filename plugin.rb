register_asset "javascripts/discourse/templates/connectors/user-profile-primary/twitter-profile.js.handlebars"
register_asset "stylesheets/twitter-profile-link.scss"

after_initialize do
  load File.expand_path("../app/serializers/user_serializer.rb", __FILE__)
end