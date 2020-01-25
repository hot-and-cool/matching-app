$(function(){

  function buildComment(comment){
    var insertImage =`<img class="comments__img" src = "${comment.user_img_name.url}">`
    var html = `<div class="content">
                  <div class="row comments">
                    <div class="col-md-2 comments-user">
                      <a href="/users/6">
                        ${insertImage}
                      </a>
                    </div>
                  </div>
                  ${comment.user_name}
                  ${comment.rate}点
                  ${comment.date}
                  ${comment.text}
                </div>`
    return html;
  }

  $('#comments_form').on('submit',function(e){
    // formが発火されたときにsubmitの動きを止める
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(comment){
      var html = buildComment(comment);
      $('.contents').prepend(html);
      $('#comment_text').val("")
      // submitボタンを復活させる
      $('.btn-success').prop('disabled', false);
      
      
      
    })
    .fail(function(){
      alert("送信失敗");
    })
  })
}); 