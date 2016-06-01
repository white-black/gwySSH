<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<table class="topiclist" style="border-collapse:collapse;">
		<s:iterator value="userTitles" status="st">
         <tr>
            <td style="border-bottom:1px solid #ececec;" >
                <h3><s:property value="tbTitle.titlename"/></h3>
                <!-- <p>作答时间：2016年03月28日 </p> -->
            </td>
            <td style="border-bottom:1px solid #ececec;" class="view_bt" >
            <a href="#">查看解析</a> </td>
        </tr>
        </s:iterator>
</table>