<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import="database.Database" %>
<html>
<head>
<meta charset="EUC-KR">
<title>와이파이 정보 구하기</title>


<style>
	#wifi_list ul {
		list-style-type: none;
		margin: 0;
		padding: 30px 0px 30px 0px;
		overflow: hidden;
	}
	#wifi_list li {
		display: flex;
		justify-content: space-between;
		height: 30px;
		padding: 8px;
		background-color: #00AB6F;
		
	}
	#wifi_list li a {
		width: 80px;
		text-decoration: none;
		text-align: center;
		font-size: 12px;
		color: #FFF;
		line-height: 30px;
		font-weight: bold;
	}
	#wifi_list ul p {
		text-align: center;
		font-weight: bold;
	}
	.form {
		width: 500px;
		float: left;
	}

</style>
</head>
<body>
	<h1>와이파이 정보 구하기</h1>
	<p><a href="Wifi.jsp">홈</a> | <a href="History.jsp">위치 히스토리 목록</a> | <a href="LoadWifi.jsp">Open API 와이파이 정보 가져오기</a></p>
	
	<div id="location">
		<div class="form">
			<form>
			    <div>
			      <label>LAT : </label> 
			      <input name="a" type="text" value="0.0" id="latValue"/> , <label>LNT : </label><input name="b" type="text" value="0.0" id="lngValue" />
			    </div>
  			</form>
		</div>
		<div class="btn">
			<button onclick="clickBtn()">내 위치 가져오기</button>
			<button onclick="clickBtn2()">근처 WIFI 정보 보기</button>
		</div>
	</div>
  	
  	<div id="wifi_list">
  		<ul>
	  		<li>
	  			<a href=#>거리(Km)</a>
	  			<a href=#>관리번호</a>
	  			<a href=#>자치구</a>
	  			<a href=#>와이파이명</a>
	  			<a href=#>도로명주소</a>
	  			<a href=#>상세주소</a>
	  			<a href=#>설치위치(층)</a>
	  			<a href=#>설치유형</a>
	  			<a href=#>설치기관</a>
	  			<a href=#>서비스구분</a>
	  			<a href=#>망종류</a>
	  			<a href=#>설치년도</a>
	  			<a href=#>실내외구분</a>
	  			<a href=#>WIFI접속환경</a>
	  			<a href=#>X좌표</a>
	  			<a href=#>Y좌표</a>
	  			<a href=#>작업일자</a>
	  		</li>
	  		<p>위치 정보를 입력한 후에 조회해 주세요.</p>
	  		
  		</ul>
  	</div>
  	
  	
  	<script>
        function clickBtn(){
            // BOM의 navigator객체의 하위에 geolocation객체가 새로 추가되었음.
            window.navigator.geolocation.getCurrentPosition( function(position){ //OK
                var lat= position.coords.latitude;
                var lng= position.coords.longitude;
                
                let latTxt = document.querySelector('#latValue');
                let lngTxt = document.querySelector('#lngValue');
            
                
                latTxt.value = lat;
                lngTxt.value = lng;
 
                document.getElementById('target').innerHTML=lat+", "+lng;
            } ,
            function(error){ //error
                switch(error.code){
                    case error.PERMISSION_DENIED:
                        str="사용자 거부";
                        break;
                    case error.POSITION_UNAVAILABLE:
                        str="지리정보 없음";
                        break;
                    case error.TIMEOUT:
                        str="시간 초과";
                        break;
                    case error.UNKNOWN_ERROR:
                        str="알수없는 에러";
                        break;
                }
                document.getElementById('target').innerHTML=str;
            });
        }

	</script>
</body>
</html>