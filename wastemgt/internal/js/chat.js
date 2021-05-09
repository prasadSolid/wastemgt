// JavaScript Document
//window.addEventListener('load', 
//  function() { 
 //   pending();
 // }, false);
/*
function pending(){
	var time = 0; 
	var tsk = "pendings";
var tk = $(this).attr("data-token");
alert(tk);
	function inTime(){
		setTimeout(inTime, 500);
		//$(".page-header h3").html(time); 

		if(time == 2){
			$.post("getchattoken.php",{task:tsk,token:tk}, function(data){
				
				if(data > 0){
					$(".badge").html(data);
					$(".badge").css({"background":"red"});
			        
				} else {
					$(".badge").html("");
					$(".show-messages").css({"color":"black","font-size":"14px"});
				}

				time = 0; 
			    clearTimeout(inTime);
			    
			    //console.log(data);
			});
		} 

		if(time == 20){
			time = 0; 
			clearTimeout(inTime); 
		}

		time ++; 
	}

	inTime();
}
*/
function memberClicked(){
$(document).unbind().on('click','.chatbtn',function(){

    //  $(this) = your current element that clicked.
    // additional code

	
		var username = $(this).attr("data-user"); 
		var tk = $(this).attr("data-token");
		var tsk = "tokening"; 
		$("#hidden-token").val(tk); 
					
		$.post("../view/getchattoken.php",{task:tsk, token:tk}, function(data){
			
		
			
			$("#chat_area").append(data);
			
			
		//	$(".display-message").html(data);
		}); 

});
}
function sendMessage(){
//	$("#send_msg").click(function(){
			
		var ms = $(".textarea-message").val();
		var tk = $("#hidden-token").val(); 
		
		var tsk = "sending";
		
		if(ms == ""){
			return;
		}

		if(tk == ""){
			alert("invalid chat token. Your previous chat token was null, Please click on member you want to send message to");
			return; 
		}
		 $(".textarea-message").attr("disabled","disabled");
		 $.post("getchattoken.php",{task:tsk, message:ms,token:tk}, function(data){
			// alert(data);
			$("#chat_area").append(data);
			
		   $(".textarea-message").val("");
		   $(".textarea-message").removeAttr("disabled");
}); 
	//	});
	}