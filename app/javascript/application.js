// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "jquery";
import "@hotwired/turbo-rails";
import "controllers";
import "channels";

//= require turbolinks
//= require semantic-ui

const scroll_bottom = () => {
  if ($(".chatroom").length > 0) {
    $(".chatroom").scrollTop($(".chatroom")[0].scrollHeight);
  }
};

function onLoad() {
  $(".message .close").on("click", function () {
    $(this).closest(".message").transition("fade");
  });
  scroll_bottom();
}

$(document).on("turbolinks:load", onLoad);
$(document).on("ready", onLoad);

window.scroll_bottom = scroll_bottom;
