<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.io.*,java.net.*"%>
<%
    String fn=request.getParameter("fn");
    String path="c://download//";
    response.setHeader("Content-Disposition", 
    		"attachment;filename="
    		+URLEncoder.encode(fn, "UTF-8"));
    File file=new File(path+fn);
    response.setContentLength((int)file.length());
    // 다운로드창을 전송
    // 데이터 전송 
    try
    {
    	BufferedInputStream bis=
    		new BufferedInputStream(new FileInputStream(file));
    	BufferedOutputStream bos=
    		new BufferedOutputStream(response.getOutputStream());
    	int i=0;
    	byte[] buffer=new byte[1024];
    	while((i=bis.read(buffer, 0, 1024))!=-1)
    	{
    		bos.write(buffer,0, i);
    	}
    	out.clear();
    	out=pageContext.pushBody();
    	bis.close();
    	bos.close();
    }catch(Exception ex){}
%>









