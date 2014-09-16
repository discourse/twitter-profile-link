export default {
  name: 'twitter-profile-link',

  initialize: function() {
    Discourse.User.reopen({
      showTwitterProfileLink: Em.computed.notEmpty("twitter_screen_name"),
      twitterProfileUrl: Discourse.computed.fmt("twitter_screen_name", "https://twitter.com/%@")
    });
  }
}