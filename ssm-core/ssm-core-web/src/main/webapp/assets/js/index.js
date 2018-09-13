	// 百度搜索所需js
	function go(formname)
	{
		 var url = "http://www.baidu.com/baidu";
		 formname.method = "get";
		if (formname.myselectvalue.value == "1") {
		  document.search_form1.word.value = document.search_form1.word.value+" site:www.当前站点URL，用于站内搜.com";
		}
		formname.action = url;
		return true;
	}
(function ($) {
    "use strict";
    var mainApp = {
        slide_fun: function () {//该函数依赖于bootstrap.js
            $('#carousel-example').carousel({
                interval:3000 // THIS TIME IS IN MILLI SECONDS
            })
        },
        dataTable_fun: function () {
            //$('#dataTables-example').dataTable();
        },
       
        custom_fun:function()
        {
            /*====================================
             WRITE YOUR   SCRIPTS  BELOW
            ======================================*/
			<!-- 点击标签平滑跳转到标签 -->
			$(".smoothJump").click(function (){
				var href=$(this).attr("href");
				var pos = $(href).offset().top;
				if(pos<=1500){
					$("html,body").animate({scrollTop: pos}, 320);
				}else if(pos<3000){
					$("html,body").animate({scrollTop: pos}, 420);
				}else{
					$("html,body").animate({scrollTop: pos}, 520);
				}return false;
			});
			//屏幕向下滚动一个屏幕，返回顶部按钮才可见
			$(window).scroll(function(){  
				if($(window).scrollTop() < ($(window).height() )){
					$(".go_to_top").css("display","none");
				} else{
					$(".go_to_top").css("display","inline");
				}
			});
			//表格排序插件tablesorter的核心语句
			$(function () {
				$('#favourite-list').tablesorter({
					headers:{
					1:{sorter:false}, //第二行和第三行不参与排序
					2:{sorter:false}
				}});
			});			
			

			// 百度搜索显示提示
			// function checkHttps () {
				// BaiduHttps.useHttps();    
			// };
			// function baiduWithHttps (formname) {
				// var data = BaiduHttps.useHttps();
				// if (data.s === 0) {
					// return true;
				// }
				// else {
					// formname.action = 'https://www.baidu.com/baidu' + '?ssl_s=1&ssl_c' + data.ssl_code;
					// return true;
				// }
			// };			
			
        },
    }
	
   
    $(document).ready(function () {
        mainApp.slide_fun();
        mainApp.dataTable_fun();
        mainApp.custom_fun();		
    });
}(jQuery));


