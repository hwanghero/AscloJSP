<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String admin_id = (String) session.getAttribute("adminID");
    if (admin_id == null) {
        response.sendRedirect("login.jsp");
    }
%>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <title>INSERT FORM</title>
    <script>
        var imgcheck = false;
        var goodscheck = false;

        $(document).ready(
            function() {
                // 태그에 onchange를 부여한다.
                $('#file').change(function() {
                    addPreview($(this)); //preview form 추가하기
                });
                $('#goods').change(function() {
                    addPreview_goods($(this)); //preview form 추가하기
                });
            });

        function addPreview(input) {
            if (input[0].files) {
                var file = input[0].files[0];
                var reader = new FileReader();
                reader.onload = function (img) {
                    //div id="preview" 내에 동적코드추가.
                    //이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
                    $("#preview").append("<img src=\"" + img.target.result + "\"\/>");
                };
                if(imgcheck == true) {
                    $('#preview').empty();
                }
                reader.readAsDataURL(file);
                imgcheck = true;
            } else alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
        }

        function addPreview_goods(input) {
            if (input[0].files) {
                var file = input[0].files[0];
                var reader = new FileReader();
                reader.onload = function (img) {
                    //div id="preview" 내에 동적코드추가.
                    //이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
                    $("#preview2").append("<img src=\"" + img.target.result + "\"\/>");
                };

                if(goodscheck == true) {
                    $('#preview2').empty();
                }
                reader.readAsDataURL(file);
                goodscheck = true;
            } else alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
        }

        function dresscheck(){
            var title = document.getElementById('title').value;
            var price = document.getElementById('price').value;
            var count = document.getElementById('count').value;
            var file = document.getElementById('file').value;
            var goods = document.getElementById('goods').value;

            if(title == ""){
                alert("제목을 적어주세요");
                return;
            }

            if(file == ""){
                alert("대표 이미지를 넣어주세요");
                return;
            }

            if(goods == ""){
                alert("상품 이미지를 넣어주세요");
                return;
            }
            var numbercheck = /(^[0-9]*$)/;
            if(price == ""){
                alert("가격을 적어주세요");
                return;
            }else{
                if (!numbercheck.test(price)){
                    alert("가격을 제대로 적어주세요");
                    return;
                }
            }

            if(count == ""){
                alert("개수를 적어주세요");
                return;
            }else{
                if (!numbercheck.test(count)){
                    alert("개수를 제대로 적어주세요");
                    return;
                }
            }
            document.dress_form.submit();
        }
    </script>
</head>
<body>
<form name="dress_form" action="dress_insert.jsp" method="post" enctype="multipart/form-data">
    제목: <input type="text" id='title' name="title" size="20"><p>
    대표 이미지: <input id="file" type="file"name="file" accept="image/gif, image/jpeg, image/png"/><p>
    <div id="preview"></div>
    상품 이미지: <input id="goods" type="file" name="goods" accept="image/gif, image/jpeg, image/png"/><p>
    <div id="preview2"></div>
    내용 : <input type="text" id='content' name="content" size="20" placeholder="입력하세요!" style="width:300px;height:200px;font-size:30px;"><p>
    가격 : <input type="text" id='price' name="price" size="20"><p>
    개수 : <input type="text" id='count' name="count" size="20"><p>
    사이즈 : <input type="text" id='size' name="size" size="20"><p>
    카테고리 : <input type="text" id='catagory' name="catagory" size="20"><p>
    색상 : <input type="text" id='color' name="color" size="20"><p>
    <input type="button" value="확인" onclick="dresscheck()">
</form>
</body>
</html>