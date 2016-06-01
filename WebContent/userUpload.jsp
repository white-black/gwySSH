<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--在进行文件上传时，表单提交方式一定要是post的方式，因为文件上传时二进制文件可能会很大，还有就是enctype属性，这个属性一定要写成multipart/form-data，
　　不然就会以二进制文本上传到服务器端--> 
　　<form action="myUploadFile" method="post" enctype="multipart/form-data">
        	选择文件: <input type="file" name="file"><br>
        <input type="submit" value="提交">
    </form>