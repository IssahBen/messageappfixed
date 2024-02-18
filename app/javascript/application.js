// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "channels"
import "@hotwired/turbo-rails"
import * as jquery from "jquery"
import "semantic-ui"


window.scroll_bottom = function () {
    if ($('#messages').length > 0) {
        $('#messages').scrollTop($('#messages')[0].scrollHeight)
    }
}

window.submit_message = function () {
    $('#message_body').on('keydown', function (e) {
        if (e.keyCode == 13) {
            $('button').click();

        };
    })
}


$(document).on('turbo:load', function () {
    console.log('loaded turbo links')
    $('.ui.dropdown').dropdown()
});
scroll_bottom();
submit_message();



