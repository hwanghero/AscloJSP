<p>result : <span id="timezones"></span></p>
<input type="button" id="execute" value="execute" />
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
    $('#execute').click(function(){
        $.ajax({
            type:"post",
            url:'okman.jsp?spread_flag=T',
            dataType:'text',
            success:function(args){
                $("#timezones").html(args);
            },
            error : function(){
                alert("error");
            }
        })
    })

    /*
    리뷰 게시글 작성을 합니다
    리뷰 게시글은 몇번 게시판에 썼는지 확인을 합니다. num=게시글번호 rv=리뷰번호
    ex) http://localhost:8090/board/dress_show.jsp?num=22&rv=1

    누를경우 --> url:'dress_show.jsp?num=22&rv=1', --> 저 내용을 json

    json에 content 내용을 일단 가져옵니다.
    누를경우  $("#timezones").html(str); 이런식으로 작동시킵니다.
     */
</script>