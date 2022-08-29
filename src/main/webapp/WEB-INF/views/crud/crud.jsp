<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <script type="text/javascript" src="./resources/js/validation.js"></script>

    <script>

        /* 상품 등록 버튼 */
        $("#enrollBtn").on("click",function(e){

            e.preventDefault();

            enrollForm.submit();

        });

    </script>
    <title>상품 등록</title>
</head>

<body>

<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">
            상품 등록
        </h1>
    </div>
</div>

<div class="container">

    <form id="enrollForm" name="regGoods" action="/crud/reqGoodsAdd" class="form-horizontal" method="post"
          enctype="multipart/form-data">



        <div class="form-group row">
            <label class="col-sm-2">상품 이름</label>
            <div class="com-sm-3">
                <input type="text" id="name" name="name" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">상품 브랜드</label>
            <div class="com-sm-3">
                <input type="text" id="brand" name="brand" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">탑 노트</label>
            <div class="com-sm-3">
                <input type="text" id="source1" name="source1" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">미들노트</label>
            <div class="com-sm-3">
                <input type="text" id="source2" name="source2" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">베이스 노트</label>
            <div class="com-sm-3">
                <input type="text" id="source3" name="source3" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">가격</label>
            <div class="com-sm-3">
                <input type="number" id="price" name="price" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">가격2</label>
            <div class="com-sm-3">
                <input type="number" id="price2" name="price2" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">가격3</label>
            <div class="com-sm-3">
                <input type="number" id="price3" name="price3" class="form-control">
            </div>
        </div>


        <div class="form-group row">
            <label class="col-sm-2">상품 이미지</label>
            <div>
              <!--  <input type="file" name="file" class="form-control"> -->
                <input type="file" name="image" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10">
                <input id="enrollBtn" type="submit" class="btn btn-primary" value="등록">
            </div>
        </div>

    </form>
</div>
</body>
</html>
