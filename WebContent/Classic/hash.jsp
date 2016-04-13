<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function hashtag(id)
{
      var content = document.getElementById('hashtag').innerHTML;
      var splitedArray = content.split(' ');
      var linkedContent = '';
      for(var word in splitedArray)
      {
        word = splitedArray[word];
      
         if(word.indexOf('#') == 0)
         {
            word = '<a href=\'링크\'>'+word+'</a>';
         }
         linkedContent += word+' ';
      }
      document.getElementById('hashtag').innerHTML = linkedContent; 
}
</script>

<div id="hashtag">

  hashtag: #안녕
  #장재호 님은 최고시다


</div>

<script>hashtag('hashtag');</script>
</body>
</html>