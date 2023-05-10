<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    #getData > div {
        width: 500px;
        border: 2px solid blue;
    }
</style>

<script>
    let ajax03 = {
        init   : function () {
            // $('#getData > button').click(function(){
            //    $.ajax({
            //        url:'/getdata',
            //        success:function (data){
            //             ajax03.display(data);
            //        }
            //    });
            // });
            setInterval(function () {
                $.ajax({
                    url    : '/getdata',
                    success: function (data) {
                        ajax03.display(data);
                    }
                });
            }, 3000);
        },
        display: function (data) {
            var result = "";

            $(data).each(function (index, item) {
                result += '<h4>';
                result += item.id + ' ' + item.pwd + ' ' + item.name;
                result += '</h4>'
            });
            $('#getData > div').html(result);
        }
    }
    // 문서가 준비되면~
    $(function () {
        ajax03.init();
    })
</script>
<div class="col-sm-8 text-left">
    <div class="container" id="getData">
        <h2>ajax03</h2>
        <button class="btn">GET DATE</button>
        <div></div>
    </div>
</div>
<%--</html>--%>