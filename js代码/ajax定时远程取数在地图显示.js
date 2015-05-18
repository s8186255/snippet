setInterval(function () {push();},30000);
function Push() {
    $.ajax({

        type: "GET",
        url: "/admin/monitor/events",

        success: function (data) {

        }


    });
}