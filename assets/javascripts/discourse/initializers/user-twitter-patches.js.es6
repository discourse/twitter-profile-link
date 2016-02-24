import { fmt } from 'discourse/lib/computed';

export default {
  name: 'twitter-profile-link',

  initialize: function() {
    Discourse.User.reopen({
      showTwitterProfileLink: Em.computed.notEmpty("twitter_screen_name"),
      twitterProfileUrl: fmt("twitter_screen_name", "https://twitter.com/%@")
    });
  }
}
