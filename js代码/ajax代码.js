/**
 * Created by Administrator on 2015/3/5.
 */

/*ajax操作*/
$.ajax( {
    url:'/provider/products/dynamic_cashback_options',// 跳转到 action
    data:{
        cashback_money: $("select[name='product[cashback]']").val(),
        price: $("input[name='product[price]']").val()
    },
    type:'get',
    cache:false,
    dataType:'json',
    success:function(data) {
        $("#cashcard-type").html(data["options"]);
    },
    error : function() {
        // view("异常！");
        alert("异常！");
    }
});

/*判断checkbox是否被选中*/
/*input[name='post[]']是checkbox类型的input框*/
$("input[name='post[]']").each(function () {
    if ($(this).is(":checked")) {
        alert($(this).val())
    }
})

//checkbox全选和全不选；
// input[name='all_product'] 是最上面的那个表示全选，全不选；
// input[name='product[]'] 则是每一个checkbox；
// 采用ajax方式：
$("button").click(function(){
    $.ajax({
        url: "/provider/orders/",
        data: {id: $(this).parent().parent().children("td")[1].innerHTML},
        type: 'get',
        dataType: 'json',
        success: function(data){
        }
    })
});


$("input[name='all_product']").on("click", function() {
    var all = $(this);
    $("input[name='product[]']").each(function() {
        $(this).prop("checked", all.prop("checked"));
    });
});







