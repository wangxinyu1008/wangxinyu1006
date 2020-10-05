$(document).ready(function () {
    $("tr:gt(0):even").css("background-color","aqua");
    $(".aid").click(function () {
        var sid=$(this).parent().text();
        var sname=$(this).parent().next().text();
        var sgender=$(this).parent().next().next().text();
        var sage=$(this).parent().next().next().next().text();
        var saddress=$(this).parent().next().next().next().next().text();
        var semail=$(this).parent().next().next().next().next().next().text();
        var json={
            "sid":sid,
            "sname":sname,
            "sgender":sgender,
            "sage":sage,
            "saddress":saddress,
            "semail":semail
        }
        $.post("/toUpd",json,function (result) {
            if(result.status=="true") {
                location.href = "/static/jsp/update.jsp";
            }
        },"json")
    })
})