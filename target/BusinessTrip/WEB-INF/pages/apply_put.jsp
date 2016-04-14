<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>首页</title>
  <link rel="stylesheet" href="<c:url value="/resources/style/home.css"/>" type="text/css">
  <link rel="stylesheet" href="<c:url value="/resources/style/header.css"/>" type="text/css">
  <link rel="stylesheet" href="<c:url value="/resources/style/common.css"/>" type="text/css">
  <link rel="stylesheet" href="<c:url value="/resources/style/left_sidebar.css"/>" type="text/css">
  <link rel="stylesheet" href="<c:url value="/resources/style/new.css"/>" type="text/css">
  <link rel="stylesheet" href="<c:url value="/resources/style/jquery-ui.min.css"/>" type = "text/css">
  <link rel="stylesheet" href="<c:url value="/resources/style/bootstrap.min.css"/>" type="text/css">
  <link rel="stylesheet" href="<c:url value="/resources/style/common.css"/>" type="text/css">
</head>
<body>
<div class="header ">
  <ul class="header_left ">
    <li><a href="">我的差旅</a></li>
    <a href=""> <li>差旅申请</li></a>
    <a href=""><li>报销</li></a>
    <a href=""><li>统计</li></a>
    <input type="text" id="mytrip_search" placeholder="查询我的差旅记录" name="query_mytrip">
  </ul>

  <div class="header_right">
    <a href="" class="add_mytrip"></a>
    <div class="myprofile">
      <a href="">
        <img src="<c:url value="/resources/image/profile-full-male.png"/>" class="radius3 clearFix" alt="新建差旅">

        <p class="clearFix">胡家煊</p>
        <span class="header_drop"></span>
      </a>
    </div>
    <ul id="header_user_menu">
      <li><a href="">个人主页</a></li>
      <li><a href="">通知中心</a></li>
      <li><a href="">退出</a></li>
    </ul>

  </div>
</div>

<div class="main_content">
  <div class="left_sidebar">
    <a href=""  >
                <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">首页</span>
                </span>
    </a>
    <a href="">
                 <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">我的差旅</span>
                </span>
    </a>
    <a href="" class="sidebar_active">
                  <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">差旅申请</span>
                </span>
    </a>
    <a href="">
                   <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">我的报销</span>
                </span>
    </a>
    <a href="">
                   <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">统计分析</span>
                </span>
    </a>
    <a href="">
                   <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">积分商城</span>
                </span>
    </a>
  </div>
  <div class="right_content">

    <div class="trip_info_left clearFix">
      <ul class="ul_tripinfo1">
        <li>
          申请人：<input class="info_input" type="text" id="trip_user" value="${apply.user_account}"/>
        </li>
        <li>
          申请时间：<input class="info_input"type="text" id="trip_apply_time" value="${apply.user_apply_time}"/>
        </li>
        <li>
          所属部门：<input class="info_input"type="text" id="trip_department" value="${apply.user_department}"/>
        </li>
        <li>
          差旅目的地：<input class="info_input"type="text" id="trip_destination" value="${apply.trip_destination}"/>
        </li>
        <li>
          差旅起始时间：<input class="info_input" type="text" id="datepicker_begin" value="${apply.trip_time_begin}"/>
        </li>
        <li>
          差旅结束时间：<input class="info_input" type="text" id="datepicker_end" value="${apply.trip_time_end}"/>
        </li>
        <li>
          联系电话：<input class="info_input"type="text" id="trip_phonecall" value="${apply.trip_phonecall}"/>
        </li>
        <li>
          差旅事因：<textarea class="info_input"type="text" id="trip_reason" value="${apply.trip_reason}"></textarea>
        </li>
      </ul>
      <div class="trip_apply">
        <a class="budget" href="javascript:void(0);" onclick="Trip_Apply();" >确认申请</a>
      </div>
    </div>
    <div class="trip_info_right">

      <table class="trip_info_tabel table table-hover">
        <thead>
        <tr>
          <th>#</th>
          <th>预算说明</th>
          <th>预算类型</th>
          <th>单价</th>
          <th>数量</th>
        </tr>
        </thead>
        <tbody class="budget_tbody">
        <c:forEach items="${budgetBeans}" varStatus="vs" var="item">
          <tr>
            <th scope="row">${vs.index}</th>
            <th class="budget_instruction"><input type='text' class='thinput input_long' value="${item.budget_info}"/></th>
            <th class="budget_class">
              <select onchange="choose_select(this,'${item.budget_class}')" >
                <option value="交通">交通</option>
                <option value="餐饮">餐饮</option>
                <option value="住宿">住宿</option>
                <option value="招待">招待</option>
                <option value="其他">其他</option>
              </select>
            </th>
            <th class='budget_price'>
              <input type='text' class='thinput input_short' value="${item.budget_price}"/>
            </th>
            <th class='budget_num'>
              <input type='text' class='thinput input_short'value="${item.budget_num}"/>
            </th>
          </tr>
        </c:forEach>
        </tbody>
      </table>
      <div class="budget_btn">
        <a class="budget" href="javascript:void(0);" onclick="addRow();" >添加</a>
        <a  class="budget" href="javascript:void(0);" onclick="deleteRow();">撤销</a>
      </div>

    </div>
  </div>
</div>

<script src="<c:url value="/resources/js/jquery-2.2.2.js"/>"></script>
<script src="<c:url value="/resources/js/header_bar.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script>
  var apply_id;
  $(function(){
    $("#datepicker_begin").datepicker();
    $("#datepicker_end").datepicker();
    var tr = document.getElementsByTagName("tr");
    var th = tr[0].firstElementChild;
    $("select").each(function(index){
      this.childNodes[0].selected = true;
    });

  });
  function Trip_Apply(){
    var user_name = $("#trip_user").val();
    var user_department = $("#trip_department").val();
    var user_applyTime = $("#trip_apply_time").val();
    var trip_destination = $("#trip_destination").val();
    var trip_time_begin = $("#datepicker_begin").val();
    var trip_time_end = $("#datepicker_end").val();
    var user_phonecall = $("#trip_phonecall").val();
    var trip_reason = $("#trip_reason").val();

    var n = $(".budget_tbody>tr").length;


    var testdata = {
      user_name: user_name,
      user_department: user_department,
      user_apply_time:user_applyTime,
      trip_destination: trip_destination,
      trip_time_begin: trip_time_begin,
      trip_time_end: trip_time_end,
      trip_reason: trip_reason,
      user_phonecall: user_phonecall
    };

    for(var i = 0;i<n;i++){
      var budget_info = $(".budget_instruction:eq('"+i+"')>input").val();

      var budget_class = $(".budget_class:eq('"+i+"')>select").val();
      var budget_price = $(".budget_price:eq('"+i+"')>input").val();
      var budget_num = $(".budget_num:eq('"+i+"')>input").val();
      if(budget_info == "" || budget_class == "" || budget_price == "" || budget_num == ""){
        alert("预算信息不能为空");
        return ;
      }
    }

    $.ajax({
      type:"POST",
      url: "/BusinessTrip/mytrip/new",
      data: testdata,
      dataType: "text",
      success:function(data){
        apply_id = data;
        var budget_array = [];
        for(var j = 0;j<n;j++){
          var budget_info = $(".budget_instruction:eq('"+j+"')>input").val();

          var budget_class = $(".budget_class:eq('"+j+"')>select").val();
          var budget_price = $(".budget_price:eq('"+j+"')>input").val();
          var budget_num = $(".budget_num:eq('"+j+"')>input").val();
          var budget = {"apply_id":data,"budget_info":budget_info,"budget_class":budget_class,"budget_price":budget_price,"budget_num":budget_price};
          budget_array.push(budget);
        }

//                 var budget_data="[";
//                 for(var i = 0;i<n;i++){
//                     var budget_info = $(".budget_instruction:eq('"+i+"')>input").val();
//
//                     var budget_class = $(".budget_class:eq('"+i+"')>select").val();
//                     var budget_price = $(".budget_price:eq('"+i+"')>input").val();
//                     var budget_num = $(".budget_num:eq('"+i+"')>input").val();
//             if(i!=(n-1)){
//                 budget_data  =budget_data+ "{\"apply_id\":\""+data+"\",\"budget_info\":\""+budget_info+"\",\"budget_class\":\""+budget_class+"\",\"budget_price\":\""+budget_price+"\",\"budget_num\":\""+budget_num+"\"}" +",";
//             }else{
//                 budget_data  =budget_data+ "{\"apply_id\":\""+data+"\",\"budget_info\":\""+budget_info+"\",\"budget_class\":\""+budget_class+"\",\"budget_price\":\""+budget_price+"\",\"budget_num\":\""+budget_num+"\"}";
//             }
////                     if(i!=(n-1)){
////                         budget_data  =budget_data+ "{apply_id:"+data+",budget_info:"+budget_info+",budget_class:"+budget_class+",budget_price:"+budget_price+",budget_num:"+budget_num+"}" +",";
////                     }else{
////                         budget_data  =budget_data+ "{apply_id:"+data+",budget_info:"+budget_info+",budget_class:"+budget_class+",budget_price:"+budget_price+",budget_num:"+budget_num+"}";
////                     }
//
//
//                 }
//                 budget_data +="]";
        send_budget_details(budget_array)
      },
      error:function(XMLHttpRequest, textStatus, errorThrown) {
        alert(XMLHttpRequest.status);
        alert(XMLHttpRequest.readyState);
        alert(textStatus);
      }
    });


    var final_json = "{user_name:"+user_name+",user_department:"+user_department+",user_applyTime:"+user_applyTime+",trip_destination:"+trip_destination+",trip_time_begin:"+trip_time_begin+",trip_time_end:"+trip_time_begin+",user_phonecall:"+user_phonecall+",trip_reason:"+trip_reason+",budget_data:"+budget_data+"}";
//         var final_json = "{\"user_name\":\""+user_name+"\",\"user_department\":\""+user_department+"\",\"user_applyTime\":\""+user_applyTime+"\",\"trip_destination\":\""+trip_destination+"\",\"trip_time_begin\":\""+trip_time_begin+"\",\"trip_time_end\":\""+trip_time_begin+"\",\"user_phonecall\":\""+user_phonecall+"\",\"trip_reason\":\""+trip_reason+"\",\"budget_data\":"+budget_data+"}";

  }

  function send_budget_details(budget_array){
    var saveDataAry=[];
    var data1={"userName":"test","address":"gz"};
    var data2={"userName":"ququ","address":"gr"};
    saveDataAry.push(data1);
    saveDataAry.push(data2);
    alert(JSON.stringify(saveDataAry));
    alert(JSON.stringify(budget_array));
    $.ajax({
      type:"POST",
      url: "/BusinessTrip/mytrip/addBudget",
      contentType: "application/json",
      data: JSON.stringify(budget_array),
      success: function(){
        alert("差旅申请成功");
      },
      error: function(XMLHttpRequest, textStatus, errorThrown) {
        alert(XMLHttpRequest.status);
        alert(XMLHttpRequest.readyState);
        alert(textStatus);
      }
    });
  }
  function addRow(){
    var n = $(".budget_tbody>tr").length;

    var trHTML = " <tr><th scope='row'>"+ (n+1) +"</th><th class='budget_instruction '><input type='text' class='thinput input_long'/></th>" +
            "<th class='budget_class'><select>" +
            "<option value='交通'>交通</option>" +
            "<option value='餐饮'>餐饮</option>" +
            "<option value='住宿'>住宿</option>" +
            "<option value='招待'>招待</option>" +
            "<option value='其他'>其他</option>" +
            "</select></th><th class='budget_price'><input type='text' class='thinput input_short'/></th><th class='budget_num'><input type='text' class='thinput input_short'/></th></tr>";

    $("tbody").append(trHTML);

  };

  function choose_select(obj,str){
    switch(str){
      case '交通':obj.childNodes[0].selected = true;break;
      case '餐饮':obj.childNodes[1].selected = true;break;
      case '住宿':obj.childNodes[2].selected = true;break;
      case '招待':obj.childNodes[3].selected = true;break;
      case '其他':obj.childNodes[4].selected = true;break;
      default : obj.childNodes[0].selected = true;
    }
  }
  function deleteRow(){
    var n = $("tbody>tr").length;
    $("tbody>tr:eq("+(n-1)+")").remove();
  };
  function thdbclick(o){

    var content = o.innerHTML;
    var content_input = o.getElementsByClassName("thinput");

    if(content == ""){
      o.innerHTML = "<input type='text' onblur='delete_input(this);' class='thinput' value='"+content+"'/>";
    }else{

    }
  };
  function delete_input(o){
    var content = o.value;
    o.parentNode.innerHTML = content;
    o.remove();

  };

</script>
</body>
</html>
