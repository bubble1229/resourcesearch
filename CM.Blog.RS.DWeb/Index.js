
//加载事件 
$(document).ready(function () {

    //绑定按钮
    $("#Search_Search_Submit_Button").on("click", function () {
        SubmitSearch();
    });

    //回车事件
    $("#Search_Keywords_TextBox").on("keypress", function (event) {
        if (event.keyCode === 13) {
            SubmitSearch();
        }
    });
});


function SubmitSearch() {

    if ($("#Search_Keywords_TextBox").val() === "") {
        alert("请输入要搜索的关键词！");
        $("#Search_Keywords_TextBox").focus();
        return;
    }


    $("#Search_Time_Container").hide();

    var URL = "/RS.ashx?Keywords=" + $("#Search_Keywords_TextBox").val();
    $.get(URL, function (data, status) {
        ProcessSearchResult(data);
    });
}

//处理搜索结果
function ProcessSearchResult(Data) {
    $("#Search_Result_Container").html("");
    var ResponseObject = JSON.parse(Data);
    if (ResponseObject.status !== "OK") {
        alert("服务出现了错误！");
        return;
    }
    var SearchResultItems = ResponseObject.result.items;
    var TempHTML = "";
    for (var i = 0; i <= SearchResultItems.length - 1; i++) {
        TempHTML += "<div class='alert alert-info' role='alert'>";
        TempHTML += "   <a class='btn btn-link '>" + SearchResultItems[i].r_title + "</a>";
        TempHTML += "   <a class='btn btn-danger pull-right' href='" + SearchResultItems[i].r_ed2k + "'>立即下载</a>";
        TempHTML += "</div>";
    }
    $("#Search_Time_Container").show();
    $("#Search_Time_Label").html(ResponseObject.result.searchtime + "秒");
    if (SearchResultItems.length === 0) {
        $("#Search_Result_Container").html("<h2 class='text-center'>没有搜索到数据</h2>");
    } else {
        $("#Search_Result_Container").html(TempHTML);
    }
}