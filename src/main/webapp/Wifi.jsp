<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import="database.Database" %>
<html>
<head>
<meta charset="EUC-KR">
<title>�������� ���� ���ϱ�</title>


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
	<h1>�������� ���� ���ϱ�</h1>
	<p><a href="Wifi.jsp">Ȩ</a> | <a href="History.jsp">��ġ �����丮 ���</a> | <a href="LoadWifi.jsp">Open API �������� ���� ��������</a></p>
	
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
			<button onclick="clickBtn()">�� ��ġ ��������</button>
			<button onclick="clickBtn2()">��ó WIFI ���� ����</button>
		</div>
	</div>
  	
  	<div id="wifi_list">
  		<ul>
	  		<li>
	  			<a href=#>�Ÿ�(Km)</a>
	  			<a href=#>������ȣ</a>
	  			<a href=#>��ġ��</a>
	  			<a href=#>�������̸�</a>
	  			<a href=#>���θ��ּ�</a>
	  			<a href=#>���ּ�</a>
	  			<a href=#>��ġ��ġ(��)</a>
	  			<a href=#>��ġ����</a>
	  			<a href=#>��ġ���</a>
	  			<a href=#>���񽺱���</a>
	  			<a href=#>������</a>
	  			<a href=#>��ġ�⵵</a>
	  			<a href=#>�ǳ��ܱ���</a>
	  			<a href=#>WIFI����ȯ��</a>
	  			<a href=#>X��ǥ</a>
	  			<a href=#>Y��ǥ</a>
	  			<a href=#>�۾�����</a>
	  		</li>
	  		<p>��ġ ������ �Է��� �Ŀ� ��ȸ�� �ּ���.</p>
	  		
  		</ul>
  	</div>
  	
  	
  	<script>
        function clickBtn(){
            // BOM�� navigator��ü�� ������ geolocation��ü�� ���� �߰��Ǿ���.
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
                        str="����� �ź�";
                        break;
                    case error.POSITION_UNAVAILABLE:
                        str="�������� ����";
                        break;
                    case error.TIMEOUT:
                        str="�ð� �ʰ�";
                        break;
                    case error.UNKNOWN_ERROR:
                        str="�˼����� ����";
                        break;
                }
                document.getElementById('target').innerHTML=str;
            });
        }

	</script>
</body>
</html>