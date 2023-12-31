<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title></title>
 
    <script>
        function clickBtn(){
            // BOM의 navigator객체의 하위에 geolocation객체가 새로 추가되었음.
            window.navigator.geolocation.getCurrentPosition( function(position){ //OK
                var lat= position.coords.latitude;
                var lng= position.coords.longitude;
 
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
 
        var id;
        function clickBtn2(){
            id= navigator.geolocation.watchPosition(function(position){
                var lat= position.coords.latitude;
                var lng= position.coords.longitude;
                document.getElementById('target').innerHTML=lat+", "+lng;
            });
        }
        function clickBtn3(){
            navigator.geolocation.clearPosition(id);
        }
    </script>
 
</head>
<body>
 
    <button onclick="clickBtn()">my location</button>
    <h3 id="target">location</h3>
 
    <button onclick="clickBtn2()">위치 자동 업데이트 watch</button>
    <button onclick="clickBtn3()">위치 자동 업데이트 종료 clear</button>
    
</body>
</html>