<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
var socket = null;
$(document).ready( function() {
    connectWS();	
});	
function connectWebSocket(url) {
	// WebSocket 오브젝트 생성 (자동으로 접속 시작한다. - onopen 함수 호출)
	let webSocket = new WebSocket(url);
	// 함수 체크하는 함수
	function call(cb, msg) {
	// cb가 함수 타입인지 확인
	if (cb !== undefined && typeof cb === "function") {
	// 함수 호출
	cb.call(null, msg);
	}
	}
	// WebSocket 서버와 접속이 되면 호출되는 함수
	webSocket.onopen = function() {
	// callback 호출
	call(open);
	};
	// WebSocket 서버와 접속이 끊기면 호출되는 함수
	webSocket.onclose = function() {
	// callback 호출
	call(close);
	};
	// WebSocket 서버와 통신 중에 에러가 발생하면 요청되는 함수
	webSocket.onerror = function() {
	// callback 호출
	call(error);
	};
	// WebSocket 서버로 부터 메시지가 오면 호출되는 함수
	webSocket.onmessage = function(msg) {
	// callback 호출
	call(message, msg);
	};
	// 웹 소켓 리턴
	return webSocket;
	}
	function connectWS() {
	    var ws = connectWebSocket("ws://13.209.132.37:8080/lifesaver/broadsocket");
	    socket = ws;
	    ws.onopen = function () {
	        console.log('Info: connection opened.');
	    };
	    ws.onmessage = function (event) {
	        console.log("ReceiveMessage:"+ event.data+'\n');
	        let $socketAlert = $('div#socketAlert');
	        $socketAlert.html(event.data);
	        $socketAlert.css('display', 'block');
	        
	        setTimeout( function() {
	        	$socketAlert.css('display', 'none');
	        }, 5000);
	    };
	    ws.onclose = function (event) { 
	        console.log('Info: connection closed.');
	       // setTimeout( function(){ connectWS(); }, 1000); // retry connection!!
	    }; 
	    ws.onerror = function (err) { console.log('Error:', err); };
	}
</script>   