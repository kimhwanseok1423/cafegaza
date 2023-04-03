$(document).ready(function(){
	    let btnList = $('.twenty');
	    for(let i=0; i<btnList.length; i++){
	        btnList[i].addEventListener('click', process,false);
	    }	   
});

function process(){

console.log(parseInt($(this).text()));
	$.ajax({
		type:'POST',
		dataType:'json',
		url:'top.do',
		data:{data:parseInt(parseInt($(this).text()))},
		success:viewMessage
	});
}

function viewMessage(res){
	//alert(res);
	$('.right_section').empty();
	$('.right_section').append(`<p>연령별 선호도 TOP20 카페</p>`);
	$.each(res,function(index,element){
	//emplist table안에 넣을꺼
		$('.right_section').append(`
		  <div class="cafe_top_list_10">
          <ul>
            <span class="ranknum"><td>${element.num}</td></span>
            <a href="#"
              ><img
                class="cafe_photo"
                src="${element.cafeurl}"
                alt="카페사진"
            /></a>
            <li class="top20_text1">${element.cafename}</li>
            <li class="top20_text2">${element.cafelocation}</li>
         
          </ul>
        </div>`)
	});
}

