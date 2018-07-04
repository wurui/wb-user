define(['oxjs'],function(OXJS){
  return {
    init:function($mod){
    	$('.J_login',$mod).on('click',function(){
    		OXJS.gotoLogin();
    	})
    }
  }
})
