// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
import "channels";

//= require jquery
//= require turbolinks
//= require semantic-ui

const scroll_bottom = () => {
  if ($("#chatroom").length > 0)
    $("#chatroom").scrollTop($("#chatroom")[0].scrollHeight);
};

const send_mssage = () => {
  $("#message_body").on("keydown", (e) => {
    if (e.keyCode == 13) {
      $("#submit_msg").click();
      e.target.value = "";
    }
  });
};

$(document).on("turbolinks:load", function () {
  $(".message .close").on("click", function () {
    $(this).closest(".message").transition("fade");
  });
  scroll_bottom();
  send_mssage();
});
