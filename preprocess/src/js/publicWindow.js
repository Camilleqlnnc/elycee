define('publicWindow', function(){

	var publicWindow = {

		init: function init(){
			this.listActiv();
			this.ajaxContact();
			this.ajaxSearch();
			if ($('.public-window').is('.article')) {
				this.articleStyle();
			}
		},

		listActiv: function listActiv(){
			var body = $('body');

			if (body.hasClass('public-window')) {
				$('.dash-menu').remove();
			}
			if (body.hasClass('home')) {
				$('.public-menu').first().find('a').addClass('active');
			}
			else if(body.hasClass('estate')){
				$('.sidebar-menu').find('li:eq(1)').find('a').addClass('active');
			}
			else if(body.hasClass('contact')){
				$('.sidebar-menu').find('li:eq(2)').find('a').addClass('active');
			}
		},

		ajaxContact: function contact(){

			$('.form-contact').data('beforesend', function() {
				$('.loading').addClass('on').removeClass('off');
			});

			$('.form-contact').data('onsuccess', function() {
		        $.ajax({
		        	method: 'POST',
		        	url: Routing.generate('splj.window.contact-save'),            
		            data:  $('.form-contact').serializeArray(),
		            success: function(data){
		            	$('.loading').addClass('off').removeClass('on');
		            	$('.centered').addClass('w100');
		            	$('.form-contact').remove();
		            	$('.centered').append('<p>Merci '+ data.name +'. Votre message a été envoyé !</p>');
		            },
		            error: function(error){
		            	$('.loading').addClass('off').removeClass('on');
		            	$('.centered').addClass('w100');
		            	$('.form-contact').remove();
		            	$('.centered').append('<div class="error-js"><p class="error">Une erreur est survenue. Tu sais pas compter ?!</p><div>');
		            	
		            	
		            }
	        	});   
			});
		},

		ajaxSearch: function ajaxSearch(){

			$('.form-search').data('beforesend', function() {
				$('.loading').addClass('on').removeClass('off');
			});

			$('.form-search').data('onsuccess', function() {
		        $.ajax({
		        	method: 'POST',
		        	url: Routing.generate('splj.window.go-search'),            
		            data:  $('.form-search').serializeArray(),
		            success: function(data){
			            $('.loading').addClass('off').removeClass('on');
		            	if (data.length !== 0) {
			            	$('.wrap-list').empty();
			            	$('.wrap-list').html(data);
		            	}else{
			            	$('.wrap-list').empty();
		            		$('.wrap-list').append('<p>Aucun article correspondant</p>');
		            	}
		            },
		            error: function(error){
			            $('.loading').addClass('off').removeClass('on');
		            	$('.wrap-list').append('<p>Une erreur est survenue</p>');
		            }
	        	});   
			});
		}, 

		articleStyle: function articleStyle(){
			var paragraph = $('.paragraph');
  			paragraph.html(paragraph.html().replace(/BR/ig, '<br>'));
		}
	};
	return publicWindow;
});
