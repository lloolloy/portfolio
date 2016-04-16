<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>

<body>
    <div class="section section-warning">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <form role="form">
              <div class="form-group">
                <label class="control-label" for="exampleInputEmail1">Email address</label>
                <input class="form-control" id="exampleInputEmail1"
                placeholder="Enter email" type="email">
              </div>
              <div class="form-group">
                <label class="control-label" for="exampleInputPassword1">Password</label>
                <input class="form-control" id="exampleInputPassword1"
                placeholder="Password" type="password">
              </div>
               <a class="btn btn-primary">로그인</a>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ul class="nav nav-pills nav-stacked">
              <li class="">
                <a href="#"><i class="fa fa-3x fa-fw fa-home"></i>홈으로</a>
              </li>
              <li class="">
                <a href="#"><i class="fa fa-3x fa-fw -o fa-bell"></i>알림사항</a>
              </li>
              <li class="active">
                <a href="#"><i class="fa fa-3x fa-fw fa-group"></i>커뮤니티</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </body>

</html> 