<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title></title>
 
    <script>
        function clickBtn(){
            // BOM�� navigator��ü�� ������ geolocation��ü�� ���� �߰��Ǿ���.
            window.navigator.geolocation.getCurrentPosition( function(position){ //OK
                var lat= position.coords.latitude;
                var lng= position.coords.longitude;
 
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
 
    <button onclick="clickBtn2()">��ġ �ڵ� ������Ʈ watch</button>
    <button onclick="clickBtn3()">��ġ �ڵ� ������Ʈ ���� clear</button>
    
</body>
</html>