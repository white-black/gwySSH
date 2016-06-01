<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
        <div class="search-wrap">
            <div class="search-content">
                <form action="#" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="120">添加题库：</th>
                            <td>
                                <select name="search-sort" id="">
                                    <option value="class01" style="font-weight:bold;font-size:14px;">行测</option>
                                    <option value="class01">言语理解与表达</option>
                                    <option value="class01">数量关系</option>
                                    <option value="class01">判读推理</option>
                                    <option value="class01">资料分析</option>
                                    <option value="class01">常识判断</option>
                                    <option value="class02" style="font-weight:bold;">申论</option>
                                </select>
                            </td>
                            <th width="70">题库名：</th>
                            <td><input class="common-text" name="keywords" value="" id="" type="text"></td>
                            <td><input class="btn btn-primary btn2" name="sub" value="添加" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>题库ID</th>
                            <th>题库名称</th>
                            <th>科目名称</th>
                            <th>操作</th>
                        </tr>
                        <tr>
                            <td>01</td>  <!--标签ID-->
                            <td>申论</td> <!--标签名称-->
                            <td>无</td>
                            <td>
                                <a class="link-del" href="#">删除</a>
                            </td>
                        </tr>
                        <tr>
                            <td>02</td>  <!--标签ID-->
                            <td>行测</td> <!--标签名称-->
                            <td>无</td>
                            <td>
                                <a class="link-del" href="#">删除</a>
                            </td>
                        </tr>
                    </table>
                    <div class="list-page"> 
                    
                    </div>
                </div>
            </form>
        </div>