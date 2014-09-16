UserSerializer.class_eval do
  attributes :twitter_screen_name

  def include_twitter_screen_name?
    object.twitter_user_info.present?
  end

  def twitter_screen_name
    object.twitter_user_info.screen_name
  end
end