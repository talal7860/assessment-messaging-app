import consumer from "channels/consumer";

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $("#chatbox").append(data.msg);
    $(".text_field_" + data.sent_by_id).val('');
    window.scroll_bottom();
  },
});
