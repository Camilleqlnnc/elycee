var Script=function(){jQuery("#sidebar .sub-menu > a").click(function(){var a=$(this).offset();diff=250-a.top,diff>0?$("#sidebar").scrollTo("-="+Math.abs(diff),500):$("#sidebar").scrollTo("+="+Math.abs(diff),500)}),$(function(){function a(){var a=$(window).width();768>=a&&($("#container").addClass("sidebar-close"),$("#sidebar > ul").hide()),a>768&&($("#container").removeClass("sidebar-close"),$("#sidebar > ul").show())}$(window).on("load",a),$(window).on("resize",a)}),$("#sidebar").hide(),$(".fa-bars").click(function(){$("#sidebar > ul").is(":visible")===!0?($("#main-content").css({"margin-left":"0px"}),$("#sidebar").hide(),$("#sidebar > ul").hide(),$("#container").addClass("sidebar-closed")):($("#sidebar > ul").show(),$("#sidebar").show(),$("#container").removeClass("sidebar-closed"))}),$("#sidebar").niceScroll({styler:"fb",cursorcolor:"#9966FF",cursorwidth:"2",cursorborderradius:"10px",background:"#666666",spacebarenabled:!1,cursorborder:""}),$("html").niceScroll({styler:"fb",cursorcolor:"#9966FF",cursorwidth:"4",cursorborderradius:"10px",background:"#666666",spacebarenabled:!1,cursorborder:"",zindex:"1000"}),jQuery(".panel .tools .fa-chevron-down").click(function(){var a=jQuery(this).parents(".panel").children(".panel-body");jQuery(this).hasClass("fa-chevron-down")?(jQuery(this).removeClass("fa-chevron-down").addClass("fa-chevron-up"),a.slideUp(200)):(jQuery(this).removeClass("fa-chevron-up").addClass("fa-chevron-down"),a.slideDown(200))}),jQuery(".panel .tools .fa-times").click(function(){jQuery(this).parents(".panel").parent().remove()}),$(".tooltips").tooltip(),$(".custom-bar-chart")&&$(".bar").each(function(){var a=$(this).find(".value").html();$(this).find(".value").html(""),$(this).find(".value").animate({height:a},2e3)})}();define("dashboard",function(){var a={init:function(){this.customMenu(),this.checkForm(),this.customPaginator()},customMenu:function(){var a=$("body");a.hasClass("dashboard")&&$(".public-menu").remove(),a.hasClass("qcm")?$(".dash-menu").eq(1).find("a").addClass("active"):a.hasClass("article")?$(".dash-menu").eq(2).find("a").addClass("active"):a.hasClass("stats")&&$(".dash-menu").last().find("a").addClass("active")},checkForm:function(){$(".form-validate").validateForm(),$('form[name="article"]').data("check",function(){var a=!0,b=/^\d{2}([./])\d{2}\1\d{4}$/;return $("#article_date").val().match(b)||(a=!1,$('form[name="article"]').data("ValidateForm").applyError($("#article_date")[0])),a}),$("form").after('<span class="error-js"></span>'),$("input, select, textarea").on("click",function(){$(this).is(".error")&&$(this).removeClass("error")}),$('input:not([type="checkbox"]), select, textarea').on("error",function(){$(".error-js").append('<p class="centered error">Le champ '+$(this).attr("data-error")+" est obligatoire</p>"),setTimeout(function(){$(".error-js").empty()},2e3)})},customPaginator:function(){var a=$(".pagination");a.find(".first a").html('<i class="fa fa-fast-backward"></i>'),a.find(".last a").html('<i class="fa fa-fast-forward"></i>'),a.find(".next a").html('<i class="fa fa-forward"></i>'),a.find(".previous a").html('<i class="fa fa-backward"></i>')}};return a}),define("main",["publicWindow","dashboard"],function(a,b){b.init(),a.init(),$(".btn-danger a").confirm(),$(function(){$(".datepicker").datepicker($.datepicker.regional.fr)})}),define("publicWindow",function(){var a={init:function(){this.listActiv(),this.ajaxContact(),this.ajaxSearch(),$(".public-window").is(".article")&&this.articleStyle()},listActiv:function(){var a=$("body");a.hasClass("public-window")&&$(".dash-menu").remove(),a.hasClass("home")?$(".public-menu").first().find("a").addClass("active"):a.hasClass("estate")?$(".sidebar-menu").find("li:eq(1)").find("a").addClass("active"):a.hasClass("contact")&&$(".sidebar-menu").find("li:eq(2)").find("a").addClass("active")},ajaxContact:function(){$(".form-contact").data("beforesend",function(){$(".loading").addClass("on").removeClass("off")}),$(".form-contact").data("onsuccess",function(){$.ajax({method:"POST",url:Routing.generate("splj.window.contact-save"),data:$(".form-contact").serializeArray(),success:function(a){$(".loading").addClass("off").removeClass("on"),$(".centered").addClass("w100"),$(".form-contact").remove(),$(".centered").append("<p>Merci "+a.name+". Votre message a été envoyé !</p>")},error:function(a){$(".loading").addClass("off").removeClass("on"),$(".centered").addClass("w100"),$(".form-contact").remove(),$(".centered").append('<div class="error-js"><p class="error">Une erreur est survenue. Tu sais pas compter ?!</p><div>')}})})},ajaxSearch:function(){$(".form-search").data("beforesend",function(){$(".loading").addClass("on").removeClass("off")}),$(".form-search").data("onsuccess",function(){$.ajax({method:"POST",url:Routing.generate("splj.window.go-search"),data:$(".form-search").serializeArray(),success:function(a){$(".loading").addClass("off").removeClass("on"),0!==a.length?($(".wrap-list").empty(),$(".wrap-list").html(a)):($(".wrap-list").empty(),$(".wrap-list").append("<p>Aucun article correspondant</p>"))},error:function(a){$(".loading").addClass("off").removeClass("on"),$(".wrap-list").append("<p>Une erreur est survenue</p>")}})})},articleStyle:function(){var a=$(".paragraph");a.html(a.html().replace(/BR/gi,"<br>"))}};return a});