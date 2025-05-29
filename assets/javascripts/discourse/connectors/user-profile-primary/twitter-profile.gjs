import Component from "@ember/component";
import { classNames, tagName } from "@ember-decorators/component";
import icon from "discourse/helpers/d-icon";

@tagName("div")
@classNames("user-profile-primary-outlet", "twitter-profile")
export default class TwitterProfile extends Component {
  <template>
    {{#if this.model.twitter_screen_name}}
      <div class="twitter-profile">
        <a href="https://twitter.com/{{this.model.twitter_screen_name}}">
          {{icon "twitter"}}&nbsp;<span>Twitter profile</span>
        </a>
      </div>
    {{/if}}
  </template>
}
